class Increment {
  String name;
  int price;
  String unit;
  Increment({required this.name, required this.price, required this.unit});
}

class Uniqlo {
  String imgUrl;
  String imgTitle;
  String description;
  List<Increment> increment;

  Uniqlo(this.imgUrl, this.imgTitle, this.description, this.increment);

  static List<Uniqlo> samples = [
    Uniqlo(
      'assets/images/uniqlo1.webp',
      'เสื้อ League of Legends',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo2.png',
      'เสื้อไอติมPikachu',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo3.webp',
      'เสื้อดำ คำF',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo4.png',
      'เสื้อเขียวมัจฉะ',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo5.png',
      'เสื้อลายหุ่นยนต์',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo6.jpg',
      'เสื้อแผนที่ CEBU',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo7.jpg',
      'เสื้อพื้นๆชิวๆ',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo8.webp',
      'เสื้อ SWE',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo9.webp',
      'เสื้อขาวเทสดี',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo10.webp',
      'เสื้อขาวเทสดีV2',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo11.png',
      'เสื้อขาวลายดอกไม้',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo12.webp',
      'เสื้อไจแอ้น',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo13.png',
      'เสื้อโดเรม่อน',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo14.png',
      'เสื้อลาบูบู้',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    ),
    Uniqlo(
      'assets/images/uniqlo15.png',
      'เสื้อน้ำตาลพื้นๆ',
      'เสื้อโคตรสวย ราคาโคตรดีย์',
      [
        Increment(name: 'Cost', price: 250, unit: 'Baht')
      ],
    )
  ];
}
