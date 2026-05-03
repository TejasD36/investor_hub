enum AppRoute {
  splash('/', 'splash'),
  login('/login', 'login'),
  dashboard('/dashboard', 'dashboard'),
  dealDetails('/dealDetails', 'dealDetails'),
  myInterests('/myInterests', 'myInterests');

  final String path;
  final String name;

  const AppRoute(this.path, this.name);
}
