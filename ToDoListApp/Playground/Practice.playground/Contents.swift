import Foundation

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

class Person {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}


class Publisher {
    
    var title: String = ""
    var recordId: String = "" // parvane kasb
    
}


class Author: Person {
    
    
    var books: [Book] = [] // rabete ya connection ba class Book
    
    
}


class Translator: Person {
    
    var books: [Book] = [] // rabete ya connection ba class Book
    
}

enum BookType {
    
    case book
    case magazine
    case article
    
}

class Book {
    
    var title: String = ""
    var author: Author = Author(name: "", age: 0)  // chon Author subclass Person hast bayad init person bedi behesh
    var translator: Translator? = nil // chon motarjem mitone nadashte bashe
    var publisher: Publisher? = nil // chon masala aricle ke publisher mione nadashte bashe
    var iban: String = "" // code on ketab masala ke unique hast to kole system
    var publishYear: UInt = 0 // UInt gozashtem chon nemikhaym manfi begere
    var type: BookType = .book // default value az enum
    var owner: Person? = nil // yani in ketab baraye ki hast, mione saheb nadashte bashe yani nil
    
}

// object nasher misazim

let publisherA = Publisher()
publisherA.title = "Nashre A"

let publisherB = Publisher()
publisherB.title = "B Ghalam"

// object nevisande misazim

let authorDoros = Author(name: "TeacherA", age: 35)
let authorRomanBook = Author(name: "WriterRB", age: 80)

// object motarjem misazim

let translator = Translator(name: "TranslatorA", age: 30)


// ketab misazim ya hamon object misazim

let mathBook = Book()
mathBook.title = "Mathematics Book"
mathBook.iban = "A1234CQS"
mathBook.publisher = publisherA
mathBook.author = authorDoros

let physicBook = Book()
physicBook.title = "Physic Book"
physicBook.iban = "B1234CQS"
physicBook.publisher = publisherA
physicBook.author = authorDoros

let romanBook = Book()
romanBook.title = "Gone with wind"
romanBook.iban = "Cwerd345k"
romanBook.publisher = publisherB
authorRomanBook.books.append(romanBook)
romanBook.author = authorRomanBook
romanBook.translator = translator

let magazine = Book()
magazine.title = "Machine"
magazine.type = .magazine
magazine.iban = "G123wedfr5"

authorDoros.books = [physicBook, mathBook] // ya
/*
 authorDoros.books.append(physicBook)
 authorDoros.books.append(mathBook)
 */



// hala masla tabe baraye peyda kardan esme nevisande

func findAuthorName(for book: Book) {
    
    print(book.author.name)
    
}

findAuthorName(for: physicBook)
findAuthorName(for: romanBook)

// hala do ta person misazim va malek mikonim


let omid = Person(name: "Omid", age: 23)
let zahra = Person(name: "Zahra", age: 12)

romanBook.owner = omid
physicBook.owner = omid
mathBook.owner = omid
magazine.owner = omid

// liste az ketab ha masala

var listBooks = [romanBook, physicBook, magazine, mathBook]

// hala mikhaym methodi benevisim ke ba tavajoh be personesh ya hamon owner ya sahebesh, ketab hasho bede.

func findBooks(for person: Person) -> [Book] {
    
    return listBooks.filter { $0.owner?.name == person.name }
    
}

findBooks(for: zahra)

// ya ba tavajoh be nevisandash bede ketab

func searchInBook(for authorName: String) -> [Book] {
    return listBooks.filter { $0.author.name == authorName }
}

searchInBook(for: "WriterRB")


