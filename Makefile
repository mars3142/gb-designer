clean:
	fvm clean

deploy:
	fvm flutter build web --release
	firebase deploy --only hosting
