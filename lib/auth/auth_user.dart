import 'dart:io';
import 'package:googleapis/youtube/v3.dart';
import 'package:googleapis_auth/auth_io.dart';

Future<AutoRefreshingAuthClient> authenticateClient() async {
  // Replace with your client ID and secret
  const clientId = "YOUR_CLIENT_ID.apps.googleusercontent.com";
  const clientSecret = "YOUR_CLIENT_SECRET";

  // OAuth 2.0 scopes for YouTube API
  const scopes = [YouTubeApi.youtubeReadonlyScope];

  final client = await clientViaUserConsent(ClientId(clientId, clientSecret), scopes, (url) {
    print('Please go to the following URL and grant access:');
    print('  => $url');
  });

  return client;
}
