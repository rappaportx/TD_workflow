# Workflow: td example (Result Output to PostgreSQL)

This example workflow ingests data using [Treasure Data's Writing Job Results into PostgreSQL Table](https://docs.treasuredata.com/display/public/INT/PostgreSQL+Export+Integration) with [td](https://docs.digdag.io/operators/td.html) operator.

# Prerequisites

In order to register your credential in TreasureData, please create connection setting on [Connector UI](https://console.treasuredata.com/app/connections).

![](https://t.gyazo.com/teams/treasure-data/3d686ed4b6d0f5842c8b3b6be0f3696e.png)

![](https://t.gyazo.com/teams/treasure-data/a48831f1b3230ededbfccb3266e850e7.png)

The connection name is used in the dig file.

# How to Run

First, please upload your workflow project by `td wf push` command.

    # Upload
    $ td wf push td_postgresql

If you want to mask setting, please set it by `td wf secrets` command. For more details, please see [digdag documentation](https://docs.digdag.io/command_reference.html#secrets)

    # Set Secrets
    $ td wf secrets --project td_postgresql --set key

    # Set Secrets on your local for testing
    $ td wf secrets --local --set key

Now you can use these secrets by `${secret:}` syntax in the dig file.

You can trigger the session manually.

    # Run
    $ td wf start td_postgresql td_postgresql --session now

## Local mode

    # Run
    $ td wf run td_postgresql.dig

# Supplemental

Available parameters for `result_settings` are here.

- database: (string, required)
- table: (string, required)
- mode: (string(append|replace|truncate|update), default append)
- unique: (string, available for update mode)
- method: (string(copy|insert), default copy)
- schema: (string, optional)
- fdw: (string(None|cstore), default None)

For more details, please see [Treasure Data documentation](https://docs.treasuredata.com/display/public/INT/PostgreSQL+Export+Integration#result-output-url-format)

# Next Step

If you have any questions, please contact support@treasure-data.com.
