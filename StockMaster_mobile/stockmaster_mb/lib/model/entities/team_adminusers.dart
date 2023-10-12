class Team_adminusers {
  Team_adminusers({
    required this.position,
    required this.name,
    required this.points,
    required this.played,
    required this.won,
    required this.drawn,
    required this.lost,
    required this.against,
    required this.gd,
     this.valueNonBlocked,
     this.valueAdminGranted,
  });

   int position;
   String name;
   String points;
   int played;
   String won;
   int drawn;
   String lost;
   int against;
   int gd;
   double? valueNonBlocked;
   double? valueAdminGranted;
}