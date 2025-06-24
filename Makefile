get:
	fvm flutter pub get

clean:
	fvm flutter clean

gen-build:
	fvm flutter pub run build_runner build

gen-build-delete:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

build-apk-dev:
	fvm flutter build apk --release --flavor=development --target=lib/main_dev.dart

build-apk-prod:
	fvm flutter build apk --release --flavor=production --target=lib/main_prod.dart

build-appbundle-dev:
	fvm flutter build appbundle --release --flavor=development --target=lib/main_dev.dart

build-appbundle-prod:
	fvm flutter build appbundle --release --flavor=production --target=lib/main_prod.dart

build-ipa-dev:
	fvm flutter build ipa --release --flavor=development --target=lib/main_dev.dart

build-ipa-prod:
	fvm flutter build ipa --release --flavor=production --target=lib/main_prod.dart