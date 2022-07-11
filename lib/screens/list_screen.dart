// lib/screens/list_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_book_list/models/book.dart';
import 'package:flutter_book_list/repositories/book_repository.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';

class ListScreen extends StatelessWidget {
  final List<Book> books = BookRepository().getBooks();

  ListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('도서 목록 앱'),
        ),
        body: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              return BookTile(book: books[index]);
            }));
  }
}

class BookTile extends StatelessWidget {
  final Book book;
  const BookTile({Key? key, required this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailScreen(
            book: book,
          ),
        ));
      }, // 여기서 title, subtitle, description, image 데이터를 다음 화면으로 이동하며 넘기게 됩니다.
    );
  }
}
