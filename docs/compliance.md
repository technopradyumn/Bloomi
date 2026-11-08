# 10. Play Store and compliance checklist

- Privacy policy on a public web page, listing every data type, why it is collected, that Drive backup is in the user's own Google account, and how to delete data.
- Account deletion: in-app option (S48) plus a public web page explaining how to request deletion. Play asks for both.
- Data safety form in Play Console, filled to match the app exactly.
- Health Connect permission declaration: request only the data types the app really reads, with a justification for each. Apply early because review can take time.
- Health apps declaration in Play Console, with the not-a-medical-device statement.
- Google Cloud OAuth setup: create the OAuth consent screen, enable the Drive API, create Android OAuth clients, and add the SHA-1 fingerprints of the debug key, the release key and the Play App Signing key. Missing the Play App Signing fingerprint is the most common reason Google sign-in works in testing but fails after release.
- Target audience: 18+. Choose the correct content rating questionnaire answers.
- Testing track: new personal developer accounts may need a closed test with a minimum number of testers for a minimum period before production. Check the current requirement in Play Console and plan the time.
- Store listing: app name with keywords (30 characters), short description (80), full description (4000), icon 512x512, feature graphic 1024x500, at least 4 phone screenshots with captions, and a disclaimer line that the app is not medical advice.
- Food data licences: confirm usage and attribution terms for every food data source and show credits in S49.

# 11. Final acceptance checklist

- Airplane mode: logging food, water, body values and viewing history all work.
- New Google account: onboarding appears once. Second login on the same account: no onboarding.
- Reinstall or second phone: all data restored from Drive.
- Health permissions denied: app still fully usable, with clear help to enable them.
- No cloud database is used anywhere (only Google Drive App Data); the only server component is the stateless photo-scan proxy.
- Every one of the 50 screens exists, has loading, empty, error and offline states where relevant, and is reachable by the flows in Section 6.
- All calculators and the sync merge have passing unit tests.
- Text at 200 percent, TalkBack basics, and reduce-motion all work.
- No API key or secret in the app source.
