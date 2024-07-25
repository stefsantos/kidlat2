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
    imageUrl: 'https://scontent.fmnl13-1.fna.fbcdn.net/v/t39.30808-6/445360788_827364152760873_6705985985270701287_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=833d8c&_nc_ohc=r2lHEzHIQycQ7kNvgEDCY0j&_nc_ht=scontent.fmnl13-1.fna&gid=AfKZWgOeJvTfnWzBrHY1923&oh=00_AYBqhDnjcuSrJtbyCGAYvvKIaLvUMR2AQNYuA90mrZBNUw&oe=66A86130',
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
    imageUrl: 'https://scontent.fmnl13-1.fna.fbcdn.net/v/t39.30808-6/288155011_5334954356543060_1900108356045744093_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=JrQw_l8Ssd8Q7kNvgHy2usx&_nc_ht=scontent.fmnl13-1.fna&oh=00_AYAe-Rmn6x8DoNDcxTC99kgyqmCWkHCk03R4MAzIcTh-4g&oe=66A87314',
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
