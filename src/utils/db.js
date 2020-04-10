import * as pg from "pg";
import { db_url } from "../config";

export function query(sql, ...params) {
    try {
        const client = new pg.Client();
        await client.connect(db_url);
        const res = await client.query(sql, params || []);
        await client.end();
        return res;
    } catch (err) {
        err.status = 500; // internal server error
        throw(err);
    }
}
