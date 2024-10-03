#!/bin/bash

# Create directory and subdirectories
mkdir -p submission_reminder_app/{app,modules,assets,config}

cd submission_reminder_app

# Create and add provided content to files
cat ../../reminder.sh > app/reminder.sh
cat ../../functions.sh > modules/functions.sh
cat ../../config.env > config/config.env
cat ../submissions.txt > assets/submissions.txt

# Add 5 additional student records to the submissions file
echo -e "Bob, Shell Navigation, not submitted\nSandra, Shell Navigation, not submitted\nEmmy, Shell Navigation, submitted\nJey, Shell Navigation, submitted\nElla, Shell Navigation, submitted" >> assets/submissions.txt

# Create script to start the reminder app
echo -e "#!/bin/bash\n./app/reminder.sh" > startup.sh

