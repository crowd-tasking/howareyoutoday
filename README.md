# howareyoutoday
How are you today - a survey tool for monitoring corona spread in congested areas

## Planned tasks for V1

- [ ] Script for creating campaign in DB
- [ ] Script for creating resondent segments in CSVs
- [ ] API for receiving IVR survey input events from Exotel
- [ ] Or, Script for loading survey responses from excel back into database from Exotel
- [ ] A dashboard created with Postgrest (APIs on postgres) and AppSmith.com (or somthing similar) for viewing reported cases

## IVR call tree

IVR CALL TREE

NOTE:
* In next updates, we will first try to contact the person on WhatsApp. If they are not present, we will call them over IVR.
* All user inputs will be fed into an API (that goes into our DB). Importing responses from an excel sheet is a less ideal solution.

### SEGMENT 1 (of users)
- Not reported symptoms so far. 

Welcome message: 

Namaste. We are conducting daily surveys to most effectively combat corona spread in your locality. You can help us by participating in a 2 minute survey everyday.


Question 1)

Is anyone in your home or are you experiencing flu-like symptoms?
Flu-like symptoms are fever, dry-cough and fatigue.
YES / NO

If the above is YES, we need to ask more questions.

Question 1.1)
How many members in your family are experiencing flu like symptoms?
Answers are 0, 1, 2, 3, 4 or more


Ending message on Whatsapp:-

Thanks for your support in the battle against Corona. Please ask others in your apartment or neighbourhood to join the survey by sending a message to this whatspp number <LINK HERE>.

Ending message on IVR:-

Thanks for your support in the battle against Corona. Please ask others in your neighbourhood to join the survey by giving a call to <XYZ number> .


### SEGMENT 2 (of users)
- Users who have reported a symptom.

Welcome message: 

Namaste. Please take 2 minutes to update us about your health. 

Question 1)
How is the health of the patient/s at your home?
1. NOT RECOVERED
2. FEELING BETTER
3. EVERYONE HAS RECOVERED
4. MORE PEOPLE HAVE FALLEN SICK
5. NEEDS MEDICAL HELP

Ending message:

Thanks for taking part in the survey again. To receive active support on your corona related enquiries you can call this hotline number <NUMBER> with passcode <ABCDE>.

----

Next in version 2, we can get some feedback (we can ask a sub-sample).

Question 3)
Are you receiving support from the govt - supplies, medicines and medical advice?
1. HAPPY, 2. POOR, 3. NO HELP

