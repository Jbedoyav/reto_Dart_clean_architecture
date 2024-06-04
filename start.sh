# Download dependencies 
flutter pub get 

# Git hooks
git config core.hooksPath .githooks
chmod +x .githooks/pre-commit
chmod +x .githooks/pre-push
chmod +x .githooks/commit-msg
# Run app
