//Library Management System
//Create a system to manage books in a library.
//Implement a Book class with properties like title, author, isbn, and isAvailable.
//Implement a Library class with methods:- addBook(Book book): Adds a book to the library.- borrowBook(String isbn): Marks a book as borrowed if available.- returnBook(String isbn): Marks a book as available again.- searchByTitle(String title): Returns books matching the title.
//Ensure that the system correctly updates the book's availability.

void main() {
  Library library = Library();
  library
      .addBook(Book("The Great Gatsby", "F. Scott Fitzgerald", "1234567890"));
  library.addBook(Book("To Kill a Mockingbird", "Harper Lee", "0987654321"));

  library.borrowBook("1234567890");
  library.returnBook("1234567890");

  var searchResults = library.searchByTitle("Gatsby");
  print(
      "Search results: ${searchResults.map((book) => book.title).join(', ')}");
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn) : isAvailable = true;

  @override
  String toString() {
    return "$title by $author (ISBN: $isbn) - ${isAvailable ? 'Available' : 'Borrowed'}";
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("Book added: ${book.title}");
  }

  void borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print("You have borrowed: ${book.title}");
        return;
      }
    }
    print("Book not available or incorrect ISBN.");
  }

  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print("You have returned: ${book.title}");
        return;
      }
    }
    print("Invalid return request.");
  }

  List<Book> searchByTitle(String title) {
    return books
        .where((book) => book.title.toLowerCase().contains(title.toLowerCase()))
        .toList();
  }
}
