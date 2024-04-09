@SuppressWarnings("all")
// LibMember Class:
public class LibMember { // LibMember Class
    // attributes (Data Fields)
    private String firstName, lastName, teleNum;
    private char gender;
    private long cprNum;
    private Book[] booksIssued;
    private int numBooksIssued;

    // Default constructor (without any parameters)
    public LibMember(){
        firstName = null;
        lastName = null;
        gender = '\u0000';
        cprNum = 0;
        teleNum = null;
        booksIssued = new Book[10];
        numBooksIssued = 0;
    }

    /**
     * Constructor with 5 parameters (except for booksIssued and
     * numBooksIssued – initialize numBooksIssued to 0)
     */
    public LibMember(String firstName,
                     String lastName,
                     char gender,
                     long cprNum,
                     String teleNum)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.cprNum = cprNum;
        this.teleNum = teleNum;
        booksIssued = new Book[10];
        numBooksIssued = 0;
    }

    // set method for all attributes
    public void setFirstName(String FirstName){ firstName = FirstName;}
    public void setLastName(String LastName){ lastName = LastName;}
    public void setGender(char Gender){gender = Gender;}
    public void setCprNum(long cprNum){this.cprNum = cprNum;}
    public void setTeleNum(String TeleNum){teleNum = TeleNum;}
    public void setBooksIssued(Book[] booksIssued) {this.booksIssued = booksIssued;}
    public void setNumBooksIssued(int NumBookslssued){numBooksIssued = NumBookslssued;}

    // get method for all attributes
    public String getFirstName(){return firstName;}
    public String getLastName(){return lastName;}
    public char getGender(){return gender;}
    public long getCprNum(){return cprNum;}
    public String getTeleNum(){return teleNum;}
    public Book[] getBooksIssued(){return booksIssued;}
    public int getNumBooksIssued(){return numBooksIssued;}

    // equals methods to compare two Library Member
    public boolean equals(LibMember obj){
        return obj.cprNum == cprNum;
    }

    // toString method to return all attribute information
    public String toString() {
        String bookArray = "";
        for (int i = 0; i <numBooksIssued; i++) {
            if (i == numBooksIssued-1)
                bookArray+=booksIssued[i].getTitle();
            else
                bookArray+=booksIssued[i].getTitle()+", ";
        }
        return ("First Name: " + firstName+
                "\tLast Name: " + lastName +
                "\tTelephone Number: " + teleNum +
                "\tGender: " + gender +
                "\tCPR Number: " + cprNum +
                "\tBooks Issued: " +"["+bookArray+"]"+
                "\tNumber of Books Issued: " + numBooksIssued
        );
    }

}