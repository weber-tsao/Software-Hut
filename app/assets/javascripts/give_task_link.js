$(document).ready(function(){ 
    // assign link attibute depend on which task_type is selected and disable need_approval check box in certain situation
    $('#give-task-link').change(function(){
        if ($("#give-task-link").val() == 'File upload') {
            //if locally hosting the project, comment out the line below and uncomment the one below that
            //comment out if locally hosting
            $('#task-link').val("https://team12.demo2.hut.shefcompsci.org.uk/upload_files");

            //uncomment if locally hosting
            //$('#task-link').val("http://localhost:3000/upload_files");
            document.getElementById("needs-approval-btn").disabled = true;
        }
        else if ($("#give-task-link").val() == 'Questionnaire') {
            //if locally hosting the project, comment out the line below and uncomment the one below that
            //comment out if locally hosting
            $('#task-link').val("https://team12.demo2.hut.shefcompsci.org.uk/answer_questions");

            //uncomment if locally hosting
            //$('#task-link').val("http://localhost:3000/answer_questions");
            document.getElementById("needs-approval-btn").disabled = true;
        }
        else {
            $('#task-link').val("");
            document.getElementById("needs-approval-btn").disabled = false;

        }
    });
});



