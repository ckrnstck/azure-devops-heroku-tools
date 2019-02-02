# Push To Heroku
This task updates an app using Heroku Git.

## Api Key
You need an api key which belongs to an app contributor. You can [create one via the Heroku cli](https://devcenter.heroku.com/articles/platform-api-quickstart#authentication).

## Parameters
| Parameter | Required | Description                                      |
|-----------|:--------:|--------------------------------------------------|
| API Key   |     X    | An api key which represents an app contributor.  |
| App Name  |     X    | Name of the Heroku app that you want to push to. |
| Push Root |     X    | The root folder to be pushed.                    |