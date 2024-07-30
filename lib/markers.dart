import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChargerMarker {
  final String name;
  final LatLng location;
  final String imageUrl;

  ChargerMarker({required this.name, required this.location, required this.imageUrl});
}

final List<ChargerMarker> markers = [


  ChargerMarker(
    name: 'Century City Mall: B2 Parking',
    location: const LatLng(34.0532, 118.4162),
    imageUrl: 'https://photos.plugshare.com/photos/1256183.jpg',
  ),
  ChargerMarker(
    name: 'One Ayala Terminal',
    location: const LatLng(14.552544199311985, 121.02794978579335),
    imageUrl: 'https://photos.plugshare.com/photos/1334617.jpg',
  ),
  ChargerMarker(
    name: 'One Bonifacio High Street AMP UP!',
    location: const LatLng(14.551479205544727, 121.04694162155381),
    imageUrl: 'https://photos.plugshare.com/photos/1264357.jpg',
  ),
  ChargerMarker(
    name: 'Power Plant Mall Charging Station (8 Rockwell)',
    location: const LatLng(14.56472, 121.03639),
    imageUrl: 'https://therockwellist.com/wp-content/uploads/2023/03/EV-Charging-Station-1536x1024.jpg',
  ),
  ChargerMarker(
    name: 'Greenbelt 3',
    location: const LatLng(14.554484591609638, 121.02176857502026),
    imageUrl: 'https://photos.plugshare.com/photos/1245511.jpg',
  ),
  ChargerMarker(
    name: 'SM Mall of Asia (North Wing)',
    location: const LatLng(14.53711226637978, 120.9818604661393),
    imageUrl: 'https://photos.plugshare.com/photos/1246890.jpg',
  ),
  ChargerMarker(
    name: 'S Maison e-Vehicle Charging Station',
    location: const LatLng(14.532728405117464, 120.9809478288363),
    imageUrl: 'https://photos.plugshare.com/photos/1376095.jpg',
  ),
  ChargerMarker(
    name: 'Ayala Malls Manila Bay',
    location: const LatLng(14.522566544134849, 120.99026677301782),
    imageUrl: 'https://photos.plugshare.com/photos/1395042.jpg',
  ),
  ChargerMarker(
    name: 'SM Bicutan (Basement Parking B)',
    location: const LatLng(14.485721043945079, 121.0431250299157),
    imageUrl: 'https://photos.plugshare.com/photos/966363.jpg',
  ),
  ChargerMarker(
    name: 'SM City BF Paranaque',
    location: const LatLng(14.457673680662099, 121.03318865831733),
    imageUrl: 'https://photos.plugshare.com/photos/1305011.jpg',
  ),
  ChargerMarker(
    name: 'SM Southmall (Tower 2 Parking)',
    location: const LatLng(14.4319837922178, 121.011523456306),
    imageUrl: 'https://photos.plugshare.com/photos/1265293.jpg',
  ),
  ChargerMarker(
    name: 'Vermosa Retail Parking Lot',
    location: const LatLng(14.388646681328613, 120.95919795622976),
    imageUrl: 'https://photos.plugshare.com/photos/1302806.jpg',
  ),
  ChargerMarker(
    name: 'SM City Dasmariñas (Upper Ground Parking)',
    location: const LatLng(14.304226576161305, 120.95705972276171),
    imageUrl: 'https://photos.plugshare.com/photos/1394743.jpg',
  ),
  ChargerMarker(
    name: 'Solarius EV Charging - MIESCOR',
    location: const LatLng(14.28335018498553, 120.88606253068535),
    imageUrl: 'https://photos.plugshare.com/photos/1283469.jpg',
  ),
  ChargerMarker(
    name: 'SM Trece Martires',
    location: const LatLng(14.28481292256628, 120.86676860690437),
    imageUrl: 'https://photos.plugshare.com/photos/1092553.jpg',
  ),
  ChargerMarker(
    name: 'Ayala Malls Serin',
    location: const LatLng(14.115541687345921, 120.95914300000001),
    imageUrl: 'https://photos.plugshare.com/photos/1384749.jpg',
  ),
  ChargerMarker(
    name: 'Escala Tagaytay',
    location: const LatLng(14.09743901227146, 120.94127276138087),
    imageUrl: 'https://photos.plugshare.com/photos/1392549.jpg',
  ),
  ChargerMarker(
    name: 'Sky Ranch Tagaytay',
    location: const LatLng(14.097192361564991, 120.93723481585738),
    imageUrl: 'https://photos.plugshare.com/photos/1248093.jpg',
  ),
  ChargerMarker(
    name: 'Robinson’s Tagaytay',
    location: const LatLng(14.10001298578202, 120.9428912841426),
    imageUrl: 'https://photos.plugshare.com/photos/1248032.jpg',
  ),
  ChargerMarker(
    name: 'SM City Sto. Tomas (Basement Parking)',
    location: const LatLng(14.109079896767708, 121.1519674455235),
    imageUrl: 'https://photos.plugshare.com/photos/1344679.jpg',
  ),
  ChargerMarker(
    name: 'SM City Lipa (2nd Floor Parking)',
    location: const LatLng(13.957012003081616, 121.16405478414262),
    imageUrl: 'https://photos.plugshare.com/photos/1400358.jpg',
  ),
  ChargerMarker(
    name: 'Camp Stone Hill',
    location: const LatLng(14.531973196646677, 121.27875431134112),
    imageUrl: 'https://photos.plugshare.com/photos/1400022.jpg',
  ),
  ChargerMarker(
    name: 'SM Center Angono',
    location: const LatLng(14.533414367173526, 121.15340943171479),
    imageUrl: 'https://photos.plugshare.com/photos/1317817.jpg',
  ),
  ChargerMarker(
    name: 'SM City Masinag',
    location: const LatLng(14.631162915579072, 121.11853954733857),
    imageUrl: 'https://photos.plugshare.com/photos/1302264.jpg',
  ),
  ChargerMarker(
    name: 'SM Marikina (B1 Parking)',
    location: const LatLng(14.631281314217603, 121.08428151563304),
    imageUrl: 'https://photos.plugshare.com/photos/965259.jpg',
  ),
  ChargerMarker(
    name: 'Gateway Mall EV Charging Station',
    location: const LatLng(14.62379926752254, 121.05389246138085),
    imageUrl: 'https://photos.plugshare.com/photos/1397953.jpg',
  ),
  ChargerMarker(
    name: 'EcoOil Gas Station',
    location: const LatLng(14.599874092637247, 121.0594384408292),
    imageUrl: 'https://photos.plugshare.com/photos/1282916.jpg',
  ),
  ChargerMarker(
    name: 'Santolan Town Plaza',
    location: const LatLng(14.606441042606832, 121.0335705772383),
    imageUrl: 'https://photos.plugshare.com/photos/1369844.jpg',
  ),
  ChargerMarker(
    name: 'SM Santa Mesa EV Parking',
    location: const LatLng(14.606936067289512, 121.01814235447652),
    imageUrl: 'https://photos.plugshare.com/photos/1341023.jpg',
  ),
  ChargerMarker(
    name: 'Estancia Mall',
    location: const LatLng(14.578979794359771, 121.06509873861916),
    imageUrl: 'https://photos.plugshare.com/photos/1354428.jpg',
  ),
  ChargerMarker(
    name: 'Eastwood Mall',
    location: const LatLng(14.616009309147652, 121.07887356979664),
    imageUrl: 'https://photos.plugshare.com/photos/1248615.jpg',
  ),
  ChargerMarker(
    name: 'The Podium',
    location: const LatLng(14.587323107982536, 121.05899067723823),
    imageUrl: 'https://photos.plugshare.com/photos/1321044.jpg',
  ),
  ChargerMarker(
    name: 'Pioneer Highlands',
    location: const LatLng(14.57847373443005, 121.0497648373006),
    imageUrl: 'https://photos.plugshare.com/photos/1253250.jpg',
  ),
  ChargerMarker(
    name: 'SM Center Shaw (Level 2 Parking)',
    location: const LatLng(14.593203953830145, 121.0465175831319),
    imageUrl: 'https://d1hv7ee95zft1i.cloudfront.net/custom/blog-post-photo/gallery/fast-charger-6440f15aa6e4f.jpg',
  ),
  ChargerMarker(
    name: 'Connecticut Arcade (2nd Floor Parking)',
    location: const LatLng(14.606042230912397, 121.05144958340814),
    imageUrl: 'https://photos.plugshare.com/photos/1323204.jpg',
  ),
  ChargerMarker(
    name: 'SM North EDSA - North Towers',
    location: const LatLng(14.659428177876611, 121.03329270000003),
    imageUrl: 'https://photos.plugshare.com/photos/1393936.jpg',
  ),
  ChargerMarker(
    name: 'SM City Valenzuela',
    location: const LatLng(14.690798571440315, 120.97796008514068),
    imageUrl: 'data:image/jpeg;base64,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',
  ),
  ChargerMarker(
    name: 'SM Center Sangandaan',
    location: const LatLng(14.658338937086238, 120.97181246138088),
    imageUrl: 'https://photos.plugshare.com/photos/1386572.jpg',
  ),
  ChargerMarker(
    name: 'Ayala Malls Cloverleaf',
    location: const LatLng(14.656975049522941, 121.00150926138087),
    imageUrl: 'https://photos.plugshare.com/photos/1347418.jpg',
  ),
  ChargerMarker(
    name: 'Emicor Inc',
    location: const LatLng(14.650675375908131, 121.01795396158842),
    imageUrl: 'https://photos.plugshare.com/photos/1315551.jpg',
  ),
  ChargerMarker(
    name: 'Vertis North EV Charging Hub',
    location: const LatLng(14.654341484590235, 121.03835743238467),
    imageUrl: 'https://photos.plugshare.com/photos/1256235.jpg',
  ),
  ChargerMarker(
    name: 'SM San Jose Del Monte (Basement 1 Parking)',
    location: const LatLng(14.79098955229023, 121.07542656446157),
    imageUrl: 'https://photos.plugshare.com/photos/1340515.jpg',
  ),
  ChargerMarker(
    name: 'SM City Fairview',
    location: const LatLng(14.741673538466776, 121.05704371786317),
    imageUrl: 'https://photos.plugshare.com/photos/1297378.jpg',
  ),
  ChargerMarker(
    name: 'SM Congressional',
    location: const LatLng(14.678375603970071, 121.03680982552565),
    imageUrl: 'https://photos.plugshare.com/photos/1335821.jpg',
  ),
  ChargerMarker(
    name: 'McDonalds Bacolor Pampanga',
    location: const LatLng(15.019198651205942, 120.66559378030938),
    imageUrl: 'https://photos.plugshare.com/photos/1328390.jpg',
  ),ChargerMarker(
    name: 'Solarius EV Charging - Quest Hotel Pampanga',
    location: const LatLng(15.183323078191869, 120.5237524831466),
    imageUrl: 'https://photos.plugshare.com/photos/1134085_1684967672.jpg',
  ),
  ChargerMarker(
    name: 'SM City Clark Multi-Level Parking',
    location: const LatLng(15.17438003206372, 120.57976572693227),
    imageUrl: 'https://photos.plugshare.com/photos/1324632.jpg',
  ),
  ChargerMarker(
    name: 'SM City Tarlac',
    location: const LatLng(15.484807257733033, 120.59545600186908),
    imageUrl: 'https://photos.plugshare.com/photos/1303773.jpg',
  ),
  ChargerMarker(
    name: 'EVOx R Hub',
    location: const LatLng(16.55428262200819, 120.32443565755767),
    imageUrl: 'https://photos.plugshare.com/photos/1390947.jpg',
  ),
  ChargerMarker(
    name: 'Shell SLEX Mamplasan',
    location: const LatLng(14.310315,121.072662),
    imageUrl: 'https://www.speed.ph/wp-content/uploads/2022/07/Shell-Recharge.jpg',
  ),
  ChargerMarker(
    name: 'Shell TPLEX Rosario La Union',
    location: const LatLng(16.226141,120.496995),
    imageUrl: 'https://www.bworldonline.com/wp-content/uploads/2023/09/VELO_PAGE2_CHARGE_image1.jpg',
  ),
  ChargerMarker(
    name: 'Hospicare MD',
    location: const LatLng(16.392100040128046, 120.58154929864844),
    imageUrl: 'https://photos.plugshare.com/photos/1394909.jpg',
  ),
  ChargerMarker(
    name: 'Ayala Baguio Technohub',
    location: const LatLng(16.399392102335515, 120.60852435250415),
    imageUrl: 'https://photos.plugshare.com/photos/1210267.jpg',
  ),
  ChargerMarker(
    name: 'Solarius EV Charging - Solarius HQ',
    location: const LatLng(16.367407646448058, 121.12017064552347),
    imageUrl: 'https://photos.plugshare.com/photos/1134079.jpg',
  ),
  ChargerMarker(
    name: 'SM City Cabanatuan',
    location: const LatLng(15.471039943841259, 120.95506080164259),
    imageUrl: 'https://photos.plugshare.com/photos/1316747.jpg',
  ),
  ChargerMarker(
    name: 'SM City Legazpi',
    location: const LatLng(13.149599259391218, 123.74485687780594),
    imageUrl: 'https://photos.plugshare.com/photos/1387288.jpg',
  ),
  ChargerMarker(
    name: 'Abreeza Mall',
    location: const LatLng(7.092808706233479, 125.61129899999996),
    imageUrl: 'https://photos.plugshare.com/photos/1391296.jpg',
  ),
  ChargerMarker(
    name: 'SM CDO Uptown',
    location: const LatLng(8.458141330046551, 124.62305747723828),
    imageUrl: 'https://photos.plugshare.com/photos/1279249.jpg',
  ),
  ChargerMarker(
    name: 'Oakridge Business Park',
    location: const LatLng(10.399566434761983, 123.92189502690017),
    imageUrl: 'https://photos.plugshare.com/photos/1323941.jpg',
  ),
  ChargerMarker(
    name: 'SM Seaside City Cebu',
    location: const LatLng(10.281926496155236, 123.88061752883631),
    imageUrl: 'http://www.zoominglife.com/wp-content/uploads/2023/02/IMG_6717-1536x1152.jpg',
  ),
  ChargerMarker(
    name: 'Bai Hotel',
    location: const LatLng(10.330397399977064, 123.93609161744261),
    imageUrl: 'https://photos.plugshare.com/photos/1318233.jpg',
  ),
  ChargerMarker(
    name: 'BTCPower Inc. Cebu',
    location: const LatLng(10.327087841045296, 123.98105630000002),
    imageUrl: 'https://photos.plugshare.com/photos/306707.jpg',
  ),
  ChargerMarker(
    name: 'Ayala Center Cebu',
    location: const LatLng(10.320854710935825, 123.90557282276174),
    imageUrl: 'https://photos.plugshare.com/photos/1350800.jpg',
  ),
  ChargerMarker(
    name: 'Sm Naga (2nd Floor Parking)',
    location: const LatLng(13.626387210644772, 123.18965797297014),
    imageUrl: 'https://photos.plugshare.com/photos/1398806.jpg',
  ),
  
];
