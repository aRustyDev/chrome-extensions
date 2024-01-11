# Function

1. [ ] Find Questions on Site
2. [ ] Find Answer Options on Site
3. [ ] Determine Answer Option Format
4. [ ] Build the Question Object
5. [ ] Save CBT Questions to local/session storage
6. [ ] Identify Disable tags/class (Create alert for these)
7. [ ] Video Skipper
8. [ ] Pull Known CBTs from REPO(s)
9. [ ] Autofill answers
10. [ ] Issue submitter
   1.  [ ] Copy webpage -> compress -> "extension broken here '$URL'"

## Object: Question

```json
{
    "cbt_id" : "sha256(tolower(cbt_name))",
    "version" : "1",
    "detection" : { 
        "domain" : "https://example.tld",
        "hooks" : {
            "question" : "label",
            "answer" : "class"
        }
    },
    "questions" : [{
        "question" : "long form string",
        "type" : "radio", 
        "options" : [
            {"option value" : 0},
            {"option value" : 1} 
        ]
    },
    {
        "question" : "long form string",
        "type" : "checkbox", 
        "options" : [
            {"option value" : 0},
            {"option value" : 1} 
        ]
    },
    {
        "question" : "long form string",
        "type" : "button", 
        "options" : [
            {"option value" : 0},
            {"option value" : 1} 
        ]
    },
    {
        "question" : "long form string",
        "type" : "match", 
        "options" : [
            {"option value" : 0},
            {"option value" : 1} 
        ]
    }]
    }
```

## App Architecture

### Paid

$5/mo : paid monthly
$1/mo : paid annually

- Use Auth0 to store user data
  - https://auth0.com/docs/quickstart/spa/vanillajs/01-login
- Use MongoDB to store data
  - https://www.mongodb.com/docs/atlas/app-services/functions/javascript-support/
- Sentry for Code Health monitoring
  - https://sentry.io/for/javascript/?original_referrer=https%3A%2F%2Fwww.google.com%2F