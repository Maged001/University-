@SuppressWarnings("all")
// Book Class:
public class Book {
    // attributes (Data Fields)
    private String title, author1, author2, publisher, isbn;
    private int yearPublication;
    private long accessionNum; // started by 1001
    private LibMember issuedTo;

    // default constructor (without any parameters)
    public Book(){
        title = null;
        author1 = null;
        author2 = null;
        publisher = null;
        yearPublication = 0;
        isbn = null;
        accessionNum = 0;
        issuedTo = null;
    }

    // constructor with 6 parameter and initialize issuedTo to null
    public Book(String title,
                String author1,
                String author2,
                String publisher,
                int yearPublication,
                String isbn)
    {
        this.title = title;
        this.author1 = author1;
        this.author2 = author2;
        this.publisher = publisher;
        this.yearPublication = yearPublication;
        this.isbn = isbn;
        issuedTo = null;
    }

    // set method for all attributes
    public void setTitle(String title){this.title = title;}
    public void setAuthor1(String author1){this.author1 = author1;}
    public void setAuthor2(String author2){this.author2 = author2;}
    public void setPublisher(String publisher){this.publisher = publisher;}
    public void setYearPublication(int yearPublication){this.yearPublication = yearPublication;}
    public void setIsbn(String isbn){this.isbn = isbn;}
    public void setAccessionNum(long accessionNum){this.accessionNum = accessionNum;}
    public void setIssuedTo(LibMember issuedTo){this.issuedTo = issuedTo;}

    // get method for all attributes
    public String getTitle(){return title;}
    public String getAuthor1(){return author1;}
    public String getAuthor2(){return author2;}
    public String getPublisher(){return publisher;}
    public int getYearPublication(){return yearPublication;}
    public String getIsbn(){return isbn;}
    public long getAccessionNum(){return accessionNum;}
    public LibMember getIssuedTo(){return issuedTo;}

    // equals methods to compare two book
    public boolean equals(Book obj){
        return obj.isbn.equals(isbn);
    }

    // toString method to return all attribute information
    public String toString() {
        String issued;
        if (issuedTo==null)
            issued = "It Has Not Been Issued To Anyone Yet";
        else
            issued = String.valueOf(issuedTo.getCprNum());
        return ("Title: "+title+
                "\tAuthor1: "+author1+
                "\tAuthor2: "+author2+
                "\tPublisher: "+publisher+
                "\tYear Publication: "+yearPublication+
                "\tISBN: "+isbn+
                "\tAccession Number: "+ accessionNum+
                "\tIssued To: "+ issued
        );
    }
} // end Book class