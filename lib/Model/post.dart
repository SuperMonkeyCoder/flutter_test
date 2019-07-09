class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '1111',
    author: '美女1',
    imageUrl: 'https://jdfq-test-img.oss-cn-beijing.aliyuncs.com/loanmarket/banner/IMG_LOAN_BANNER_1525854037443_574538.jpg',
  ),
  Post(
    title: '2222',
    author: '美女2',
    imageUrl: 'http://pic225.nipic.com/file/20190702/12304177_113524157000_2.jpg',
  ),
  Post(
    title: '3333',
    author: '美女3',
    imageUrl: 'http://pic27.nipic.com/20130314/11899688_195802894000_2.jpg',
  ),
  Post(
    title: '4444',
    author: '美女4',
    imageUrl: 'http://pic27.nipic.com/20130314/11899688_194041137000_2.jpg',
  ) ,
  Post(
    title: '555555',
    author: '美女5',
    imageUrl: 'http://pic225.nipic.com/file/20190702/12304177_113548664001_2.jpg',
  )
];