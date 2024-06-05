# Download dependencies 
flutter pub get 

# Git hooks
git config core.hooksPath .githooks
chmod 555 .githooks/pre-commit
chmod 555 .githooks/pre-push
chmod 555 .githooks/commit-msg

# Run app
