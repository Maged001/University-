import java.util.LinkedList;
/// LibrarySystem Class:
public class LibrarySystem {
    // attributes (Data Fields)
    private final LinkedList<Book> booksList;
    private final LinkedList<LibMember> membersList;
    private int booksListSize;
    private int membersListSize;

    /**
     * Default Constructor:
     * Create booksList and memberList and
     * initialize booksListSize and memberListSize to 0
     */
    public LibrarySystem(){
        // initially empty list
        booksList = new LinkedList<>();
        membersList = new LinkedList<>();
        booksListSize = 0;
        membersListSize = 0;
    }

    /**
     * Insert an object at the end of the booksList.
     * @param newBook - the new Book to be added
     * @return true if book is not already exist in booksList
     */
    public boolean addBook(Book newBook){
        for (Book book : booksList)
            if (book.getAccessionNum()== newBook.getAccessionNum()) return false;
        booksList.add(newBook);
        booksListSize++;
        return true;
    }

    /**
     * Delete an object from the booksList if the book is not issued to
     * any member and the book is existed in the booksList.
     * @param accessionNumber - the accession Number of the book
     * @return true if book was deleted
     */
    public boolean deleteBook(long accessionNumber){
        for (Book book : booksList )
            if (book.getAccessionNum()==accessionNumber) {
                if (book.getIssuedTo() == null) {
                    booksList.remove(book);
                    booksListSize--;
                    return true;
                }
            }
        return false;
    }

    /**
     * Insert an object at the end of the membersList.
     * @param newLibMember - the new member to be added in the list
     * @return true if member is not already exist in membersList
     */
    public boolean addMember(LibMember newLibMember){
        for (LibMember libMember : membersList)
            if (libMember == newLibMember) return false;
        membersList.add(newLibMember);
        membersListSize++;
        return true;
    }

    /**
     * Delete the member from the membersList if the member exist in the membersList
     * and the book issued to the member is 0.
     * @param cprNum - the CPR Number for the member
     * @return true if the member was deleted
     */
    public boolean deleteMember(long cprNum){
        for(LibMember member : membersList)
            if (member.getCprNum()==cprNum)
                if (member.getNumBooksIssued()==0){
                    membersList.remove(member);
                    membersListSize--;
                    return true;
                }
        return false;
    }

    /**
     * Return the index of the book that has accessionNum in the booksList
     * @param accessionNum - the accession Number of the book
     * @return the index of the book if it is found in the booksList,
     *         or return -1 if the books not found in booksList
     */
    public int searchBook(long accessionNum){
        int index = 0;
        for (Book book: booksList){
            if (book.getAccessionNum()==accessionNum)
                return index;
            else index++;
        }
        return -1;
    }

    /**
     * Return the index of the member that has cprNum in the membersList
     * @param cprNum - the CPR Number for the member
     * @return the index of the member if it is found in the membersList,
     *         or return -1 if the member not found in memberList.
     */
    public int searchMember(long cprNum){
        int index = 0;
        for (LibMember member : membersList){
            if (member.getCprNum()==cprNum)
                return index;
            else index++;
        }
        return -1;
    }

   // The method will return true if the size of the booksList==0,
   // else will return false
    public boolean isEmptyBooksList(){
        return booksListSize==0;
    }

    // The method will return true if the size of the membersList==0,
    // else will return false
    public boolean isEmptyMembersList(){
        return membersListSize==0;
    }

    // The method will return the size of the booksList
    public int sizeBooksList(){
        return booksListSize;
    }

    // The method will return the size of the membersList
    public int sizeMembersList(){
        return membersListSize;
    }

    /**
     * The method will issue book to the member only if:
     * (a) The Book exists in the booksList.
     * (b) The member exists in the membersList.
     * (c) The Book is not issued to any member.
     * (d) The member has less than 10 books issued to him/her.
     * If the preceding conditions are met then the book wil issued to the member and the
     * book will add to the booksIssued array for the member and increment the size by 1 of the
     * booksIssued, and the issuedTo(in the book class) will be reference to the member.
     * @param accessionNumber - the accession Number of the book
     * @param cprNumber - the CPR Number for the member
     * @return true if the book was issued to the member.
     */
    public boolean issuedBook(long accessionNumber, long cprNumber ){
        boolean foundBook = false;
        for (Book book: booksList)
            if (book.getAccessionNum()==accessionNumber)
                if (book.getIssuedTo()==null){
                    foundBook = true;
                    break;
                }

        boolean foundMember = false;
        for (LibMember member : membersList)
            if (member.getCprNum()==cprNumber)
                if (member.getNumBooksIssued()<10) {
                    foundMember = true;
                    break;
                }
        if (foundBook && foundMember){
            Book book = booksList.get(searchBook(accessionNumber)); // find the book
            LibMember member = membersList.get(searchMember(cprNumber)); // find the member
            member.getBooksIssued()[member.getNumBooksIssued()] = book; // add book to the BooksIssued (for the member) at the end of the array
            member.setNumBooksIssued(member.getNumBooksIssued()+1); // increment the size of the booksIssued
            book.setIssuedTo(member); // issued the book to the member
            return true;
        }
        return false;
    }

    /**
     * The method will return book from the member to the library and the book can
     * be returned only if:
     * (a) The Book exists in the booksList.
     * (b) The book is issued to a member.
     * If the preceding conditions are met then the book wil be returned, and will
     * be deleted from booksIssued array for the member and decrement size of the
     * array by 1 and the issuedTo instance variable of the Book equal null.
     * @param accessionNum - the accession Number of the book
     * @return true if the book was returned to the library
     */
    public boolean returnBook(long accessionNum){
        for (Book book :booksList){
            if (book.getAccessionNum() == accessionNum){
                if (book.getIssuedTo() != null){
                    for (int i = 0; i < 10; i++)
                        if (book.getIssuedTo().getBooksIssued()[i]==book){
                            book.getIssuedTo().getBooksIssued()[i]=null;
                            book.getIssuedTo().setNumBooksIssued(book.getIssuedTo().getNumBooksIssued()-1);
                            book.setIssuedTo(null);
                            return true;
                        }
                }
            }
        }
        return false;
    }


    /*
     * The method will print details of all books issued to the member.
     * @param cprNum - the CPR Number for the member
     */
    public void printBooksIssued(long cprNum){
        for (LibMember member : membersList) {
            if (member.getCprNum() == cprNum) {
                if (member.getNumBooksIssued()>0) {
                    for (int i = 0; i < member.getNumBooksIssued(); i++)
                        System.out.println(member.getBooksIssued()[i]);
                }
                else {
                    System.out.println("<< This Member Does Not Have Any Books >>");
                }
                return;
            }
        }
        System.out.println("<< The member dose not exist in the member list >>");
    }

    /**
     * The method will check if the book was issued to any member or not.
     * @param accessionNum - the accession Number for the book
     * @return true if the book is issued to any member
     */
    public boolean isBookIssued(long accessionNum){
        for (Book book : booksList)
            if (book.getAccessionNum()==accessionNum)
                if (book.getIssuedTo()!=null)
                    return true;
        return false;
    }

    /**
     * Print all books in the Books List
     */
    public void printBooksList(){
        System.out.println("<----------------------------------------------------------------------------------------------------------------------------->");
        for (int i=0; i<booksListSize; i++)
        System.out.println(booksList.get(i));
        System.out.println("<----------------------------------------------------------------------------------------------------------------------------->");
    }

    /**
     * Print all members in the Members List
     */
    public void printMemberList(){
        System.out.println("<----------------------------------------------------------------------------------------------------------------------------->");
        for (int i=0; i<membersListSize; i++)
            System.out.println(membersList.get(i));
        System.out.println("<----------------------------------------------------------------------------------------------------------------------------->");
    }
} // end LibrarySystem Class