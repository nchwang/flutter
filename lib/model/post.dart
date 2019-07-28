class Post {
  const Post({ // 相当于构造函数，对外部定义传递参数
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title:'Jacky',
    author:'jacky',
    imageUrl:'http://12344'
  ),
  Post(
    title:'Jacky',
    author:'jacky',
    imageUrl:'http://12344'
  ),
  Post(
    title:'Jacky',
    author:'jacky',
    imageUrl:'http://12344'
  ),
];