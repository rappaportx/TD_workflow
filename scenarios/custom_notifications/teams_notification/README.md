# Workflow: Scenario (Custom notification - Microsoft Teams)

## Scenario

By default the notification on a workflow failure will only go to the owner of the workflow. The purpose of this scenario is to illustrate how to send a notification to a Teams channel when a workflow encounters an error.

*Steps*
1. Run an incorrect query that results in a workflow failure.
2. Kick the `_error` task, the http operator will then send a notification including the error message.
3. Receive the Teams message notification indicating that the workflow has failed.

In this scenario, some workflow operators are used. Please refer to the documentation for each operator.

 - `td>: operator`: [td>: Running Treasure Data Query](https://docs.digdag.io/operators/td.html)
 - `http>: operator`: [http>: Making HTTP requests](https://docs.digdag.io/operators/http.html)
 - `_error: task`: [_error:](https://docs.digdag.io/concepts.html?highlight=_error#dynamic-task-generation-and-check-error-tasks)

It may be helpful for Teams side setting.

 - [Teams Incoming Webhook](https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook)
 - [Format Cards](https://docs.microsoft.com/en-us/microsoftteams/platform/task-modules-and-cards/cards/cards-format?tabs=adaptive-md%2Cconnector-html)


# How to use

# How to Run for Server/Client Mode

First, please upload the workflow.

    # Upload
    $ td wf push custom_notification

You can trigger the session manually to watch it execute.

    # Run
    $ td wf start custom_notification custom_notification --session now


# Next Step

If you have any questions, please contact support @ support@treasuredata.com.