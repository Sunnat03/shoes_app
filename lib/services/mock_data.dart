List<Map<String,dynamic>> categoriesMock = [
  {
    'id' : '01',
    'name' : 'LifeStyle',
    'icon' : '👟',
    'products' : [
      '01',
      '02',
      '03',
      '04',
      '05'
    ]
  },


  {
    'id' : '02',
    'name' : 'Running',
    'icon' : '🏃',
    'products' : [
      '06',
      '07',
      '08',
      '09',
      '10'

    ]
  },

  {
    'id' : '03',
    'name' : 'Soccer',
    'icon' : '⚽️',
    'products' : [
      '11',
      '12',
      '13',
      '14',
      '15'


    ]
  }
];


List<Map<String,dynamic>> productsMock = [

  // lifestyle
  {
    'id' : '01',
    'title' : 'AirMax 90',
    'price'  : 600000,
    'categoryId' : '01',
    'images' : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/bhwrvokud9flh34cchb8/air-max-90-mens-shoes-6n3vKB.png',
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
    'discount' : 0.15,
  },

  {
    'id' : '02',
    'title' : 'Air Max Terrascape 90',
    'price' : 800000,
    'categoryId' : '01',
    'images' : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/76201dcc-657c-4b3d-8a0f-860bcd3884ff/air-max-terrascape-90-mens-shoes-61rLc8.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '03',
    'title' : 'Air Jordan 13 Retro',
    'price' : 600000,
    'categoryId' : '01',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/3b207f3f-06ca-4a1e-bdd5-48bc8838b8b2/air-jordan-13-retro-shoe-LtBtC2.png'
    ],

    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike'
  },

  {
    'id'  : '04',
    'title' : 'Air More Uptempo \'96',
    'price' : 670000,
    'categoryId'  : '01',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/62bb1baa-6448-4cd0-b65a-fe44ef5234ab/air-more-uptempo-96-mens-shoes-q0nwf1.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike'
  },

  {
    'id'  : '05',
    'title' : 'Air Max 97 OG',
    'price' : 780000,
    'categoryId'  : '01',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8a27b127-8a9f-4c06-bd34-fa9ded6e81f4/air-max-97-og-mens-shoes-qfrBpz.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike'
  },


  // running
  {
    'id' : '06',
    'title' : 'React Infinity Run Flykit 3',
    'price'  : 670000,
    'categoryId' : '02',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/159ac953-bff5-463a-8fc0-19222587f9a9/react-infinity-run-flyknit-3-mens-road-running-shoes-1bRq75.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '07',
    'title' : 'Zoom ZoomX Streakfly',
    'price'  : 770000,
    'categoryId' : '02',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/721bea1a-f3e5-4e57-84ba-59afaf502120/zoomx-streakfly-road-racing-shoes-8rTxtR.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
    'discount'  :  0.9,
  },

  {
    'id' : '08',
    'title' : 'Zoom Fly 5 A.I.R Hola Lou',
    'price'  : 970000,
    'categoryId' : '02',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ee8aea69-04ee-4e34-b0a4-9b682d33fcee/zoom-fly-5-air-hola-lou-mens-road-running-shoes-jGsdSl.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '09',
    'title' : 'Air Zoom Structure 24',
    'price'  : 770000,
    'categoryId' : '02',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b6c10433-4f40-4286-b48f-c6d52cb7abc2/air-zoom-structure-24-mens-road-running-shoes-W9Q4jg.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '10',
    'title' : 'Air Zoom Tempo Next% Flykit',
    'price'  : 970000,
    'categoryId' : '02',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/24a0779c-6e1d-4fb8-a1e7-f515888942f8/air-zoom-tempo-next-flyknit-mens-road-running-shoes-HMLvjm.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },



  // soccer
  {
    'id' : '11',
    'title' : 'Zoom Mecurial Superfly 9 Elite',
    'price'  : 870000,
    'categoryId' : '03',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8da772cb-6123-4344-816c-a58543fd8551/zoom-mercurial-superfly-9-elite-fg-firm-ground-soccer-cleats-sb8gJK.png'

    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '12',
    'title' : 'Mercurial Vapor 14 Elite FG',
    'price'  : 670000,
    'categoryId' : '03',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/0e382ac6-4789-40fe-b48c-0349a5173707/mercurial-vapor-14-elite-fg-firm-ground-soccer-cleats-Mq8RLH.png',
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '13',
    'title' : 'Lunar Gato II IC',
    'price'  : 870000,
    'categoryId' : '03',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/16169046-5fd0-40d0-b1ab-d47a206390f7/lunar-gato-ii-ic-indoor-court-soccer-shoes-qqTAoz9v.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '14',
    'title' : 'Mercurial Superfly 9 Club IC',
    'price'  : 970000,
    'categoryId' : '03',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/12bd0bfb-8029-4fa2-95bc-3b702e6a0ec4/mercurial-superfly-9-club-ic-indoor-court-soccer-shoes-6mnJ1Z.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
  },

  {
    'id' : '15',
    'title' : 'Mercurial Air Zoom Vapor 14 Pro',
    'price'  : 890000,
    'categoryId' : '03',
    'images'  : [
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/73316225-af59-41a9-a96e-b68e2e1e8a92/mercurial-air-zoom-vapor-14-pro-tf-turf-soccer-shoes-Zp6pfK.png'
    ],
    'createdDate' : DateTime(2022,8,22,8).toString(),
    'size' : '1',
    'companyName' : 'Nike',
    'discount' : .23,
  },




];