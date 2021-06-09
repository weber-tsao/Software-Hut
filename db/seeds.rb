# This file should contains all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#all user accounts
USERS = [
    { "email" => "internal1@gmail.com", "account_type" => "internal", "password" => "password", "active" => true },
    { "email" => "internal2@gmail.com", "account_type" => "internal", "password" => "password", "active" => true },
    { "email" => "newvendor1@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "newvendor2@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "newvendor3@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "newvendor4@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "newvendor5@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "existingvendor1@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "existingvendor2@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "existingvendor3@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "existingvendor4@gmail.com", "account_type" => "vendor", "password" => "password", "active" => true },
    { "email" => "existingvendor5@gmail.com", "account_type" => "vendor", "password" => "password", "active" => false },
    { "email" => "existingvendor6@gmail.com", "account_type" => "vendor", "password" => "password", "active" => false }
]
#Vendor accounts
VENDORS = [
    { "name" => "JamIT Ltd", "company_number" => "2468101214", "legal_address" => "87 Park Road, Telford, TF25 8AU", "jurisdiction" => "UK", "service_type" => "Music Equipment",
        "contact_number" => "0118 961 2842", "director" => "Anthony Travis", "approved" => false, "user_id" => 3},

    { "name" => "MouseClick Inc", "company_number" => "13579111", "legal_address" => "Middle Flat, 22 Queen Street, Lynton, EX35 6AA", "jurisdiction" => "USA", "service_type" => "IT Equipment",
        "contact_number" => "509-356-1368", "director" => "Mr Gary A Keene", "approved" => false, "user_id" => 4},

    { "name" => "USB Ltd ", "company_number" => "1245789101112", "legal_address" => "15 Grove Road, Tunbridge Wells, TN89 2GS", "jurisdiction" => "UK", "service_type" => "IT Equipment",
        "contact_number" => "01625 829883", "director" => "Ben K Cartwright", "approved" => false, "user_id" => 5},

    { "name" => "Keyboards LLC", "company_number" => "GHT0987654", "legal_address" => "3 Brick Row, Halifax, HX3 9AT", "jurisdiction" => "USA", "service_type" => "IT Equipment",
        "contact_number" => "919-784-1307", "director" => "Anthony H Robinson", "approved" => false, "user_id" => 6},

    { "name" => "SaaS Solutions S.A.R.L", "company_number" => "PSU6789102", "legal_address" => "122 rue de la Mare aux Carats, Montreuil, 93100", "jurisdiction" => "France", "service_type" => "Software",
        "contact_number" => "01.67.55.48589", "director" => "Ms Olivie L Querry", "approved" => false, "user_id" => 7},

    { "name" => "ABC Ltd", "company_number" => "12345678910", "legal_address" => "79  Kingsway North, Hole-In-The-Wall, HR9 0DJ", "jurisdiction" => "UK", "service_type" => "Office Supplies",
        "contact_number" => "07932 489449", "director" => "Mr Louie H Preston", "approved" => true, "user_id" => 8},

    { "name" => "IT Apps Ltd", "company_number" => "65432198765", "legal_address" => "31  Dover Road, West Witton, DL8 1EB", "jurisdiction" => "UK", "service_type" => "Software",
        "contact_number" => "07976 183055", "director" => "Ms Courtney J Allan", "approved" => true, "user_id" => 9},

    { "name" => "Mega Inc", "company_number" => "SEC456789", "legal_address" => "408b Empire Center Mody Road, Hong Kong", "jurisdiction" => "Hong Kong", "service_type" => "Software",
        "contact_number" => "07842 853571", "director" => "Mr Wen Fan", "approved" => true, "user_id" => 10},

    { "name" => "Big S.A.R.L", "company_number" => "N5467589DF", "legal_address" => "59  rue Léon Dierx, LIMOGES, Limousin, 87280", "jurisdiction" => "France", "service_type" => "Office Supplies",
        "contact_number" => "05.56.22.22625", "director" => "Ms Alexandrie G Jacques", "approved" => true, "user_id" => 11},

    { "name" => "Computer Parts LLP ", "company_number" => "1238967535", "legal_address" => "113  Front Street, Knowle, EX17 5NQ", "jurisdiction" => "UK", "service_type" => "IT Equipment",
        "contact_number" => "07918 547767", "director" => "Mr Charles N Ali", "approved" => true, "user_id" => 12},

    { "name" => "ABC Consultancy LLC", "company_number" => "VSE1909098", "legal_address" => "Grand Cayman KY1-1107, C & M Bldg., School House Rd., Grand Cayman, George Town", "jurisdiction" => "Cayman Islands", "service_type" => "Advertising",
        "contact_number" => "(345) 949-0722", "director" => "Ms Imogen M Perkins", "approved" => true, "user_id" => 13}
]

#PERFORMANCES
PERFORMANCE_KPIS= [
    [2.3,4.4,1.5,1.0,1.0,1.0],
    [1.5,2.0,4.8,1.2,2.1,3.9],
    [4.3,3.5,4.5,4.8,1.0,3.9],
    [3.1,5.8,2.7,3.1,4.8,5.0],
    [2.6,2.6,3.1,4.4,4.6,1.0],
    [4.5,1.5,1.2,2.1,5.0,4.4],
    [5.0,3.2,4.3,2.3,1.0,5.0],
    [1.0,4.1,3.8,1.9,4.7,3.1],
    [4.2,2.7,3.6,1.5,1.1,2.6],
    [3.2,1.9,1.8,4.7,2.2,3.2],
    [3.8,4.5,2.1,5.0,3.4,2.5]
]
PERFORMANCES= [
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"},
    {"current_credit" => "010", "credit_threshold" => "001", "initial_credit" => "011", "current_risk" => "low", "initial_risk" => "low"}
]


# TASKS
TASKS = [
    {"task_name" => "Init Task 1", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => true},
    {"task_name" => "Init task 2", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => true},
    {"task_name" => "Init1App0", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => true},
    {"task_name" => "Init0App1", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => false},
    {"task_name" => "Init0App2", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => false},
    {"task_name" => "Init task 1_v2", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => true},
    {"task_name" => "Init task 2_v2", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => true},
    {"task_name" => "Init1App0_v2", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => true},
    {"task_name" => "Init0App1_v2", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => false},
    {"task_name" => "Init0App0_v2", "task_type" => "Other", "link" => "https://www.sheffield.ac.uk/ssid/exams/results", "file_title" => "N/A", "deadline" => "2021-04-16", "needs_approval" => true, "initial_task" => false}
]


Task.where(task_name: 'Upload pdf1').first_or_create(   #test upload1
    task_type: 'File upload', link: 'http://[::1]:3000/upload_files?upload=Submit', file_title: 'PDF1',
    deadline: '2021-05-16', needs_approval: false, initial_task: true
)

Task.where(task_name: 'Upload pdf2').first_or_create(   #test upload2
    task_type: 'File upload', link: 'http://[::1]:3000/upload_files?upload=Submit', file_title: 'PDF2',
    deadline: '2021-05-16', needs_approval: false, initial_task: true
)

#Task Allocations
#row=vendor
#column=task
#each task will be marked as not completed
TASK_ALLOCATIONS = [
    [1,2,3,4,5,6,7,8,9,10,11,12],
    [1,2,3,4,5,6,7,8,9,10,11,12],
    [1,2,3,4,5,6,7,8,9,10,11,12],
    [1,2,3,4,5,6,7,8,9,10,11,12],
    [1,2,3,4,5,6,7,8,9,10,11,12],
]

#QUESTIONS
QuestionSet.first_or_create(
    name: 'Initial Triage'
)

Question.where(question_text: 'Is your organisation ISO 27001 certified?').first_or_create(
    question_set_id: 1
)

Question.where(question_text: 'Is your organisation PCI-DSS certified?').first_or_create(
    question_set_id: 1
)

AnswerOption.where(question_id: 1).first_or_create(
    answer_text: 'A : Not Certified'
)

AnswerOption.where(answer_text: 'B : Hold current, valid certification').first_or_create(
    question_id: 1
)

AnswerOption.where(question_id: 2).first_or_create(
    answer_text: 'A : Not Certified' 
)

AnswerOption.where(id: 4).first_or_create(
    answer_text: 'B : Hold current, valid certification', question_id: 2
)

VendorResponse.where(id: 1).first_or_create(
    question_id: 1, answer_option_id: 1, vendor_id: 1
)

VendorResponse.where(id: 2).first_or_create(
    question_id: 2, answer_option_id: 2, vendor_id: 1
)

VendorResponse.where(id: 3).first_or_create(
    question_id: 3, answer_option_id: 3, vendor_id: 1
)

#VENDOR ASSIGNMENTS
VendorAssignment.where(vendor_id: 1).first_or_create(user_id: 1)

#create all user accounts
USERS.each do |user|
    User.where(email: user["email"]).first_or_create(
        password: user["password"], password_confirmation: user["password"], account_type: user["account_type"], active: user["active"]
    )
end

#create all vendors
VENDORS.each do |vendor|
    Vendor.where(name: vendor["name"]).first_or_create(
        company_number: vendor["company_number"], legal_address: vendor["legal_address"], jurisdiction: vendor["jurisdiction"], 
        service_type: vendor["service_type"], contact_number: vendor["contact_number"], director: vendor["director"], approved: vendor["approved"], user_id: vendor["user_id"]
    )
end

#assign performances to vendors
(0..10).each do |i|
    Performance.where(vendor_id: i+1).first_or_create(
    KPI1: PERFORMANCE_KPIS[i][0], KPI2: PERFORMANCE_KPIS[i][1], KPI3: PERFORMANCE_KPIS[i][2], KPI4: PERFORMANCE_KPIS[i][3], KPI5: PERFORMANCE_KPIS[i][4], KPI6: PERFORMANCE_KPIS[i][5], 
    current_credit: PERFORMANCES[i]["current_credit"], credit_threshold: PERFORMANCES[i]["credit_threshold"], 
    initial_credit: PERFORMANCES[i]["initial_credit"], current_risk: PERFORMANCES[i]["current_risk"], initial_risk: PERFORMANCES[i]["initial_risk"]
    )
end

#create all tasks
TASKS.each do |task|
    Task.where(task_name: task["task_name"]).first_or_create(
    task_type: task["task_type"], link: task["link"], file_title: task["file_title"],
    deadline: task["deadline"], needs_approval: task["needs_approval"], initial_task: task["initial_task"]
    )
end

#assign all tasks to each new vendor
(0..4).each do |i|
    TASK_ALLOCATIONS[i].each do |task_id|
        TaskAllocation.where(task_id: task_id, vendor_id: i+1).first_or_create(
            completed: false
        )
    end
end

