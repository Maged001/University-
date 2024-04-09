import java.util.NoSuchElementException;
import java.util.Scanner;
public class LibraryMain {
    public static void main(String[] args) {
        Scanner kbd = new Scanner(System.in);
        LibrarySystem system = new LibrarySystem();
        System.out.print("Here =>  ");
        String IN = kbd.next();
        while (!IN.equals("1")) {
            System.out.println("Please Press 1 And Enter For Services: ");
            IN = kbd.next();
        }
        int menu = Integer.parseInt(IN);
        // The Service Menu
        while (menu==1){
            System.out.println("Please Enter a number from (1 to 14) to choose service < Enter 0 to exit > : ");
            System.out.println("To adding a Book ---------------------------------- 1");
            System.out.println("To deleting a Book -------------------------------- 2");
            System.out.println("To adding a Member -------------------------------- 3");
            System.out.println("To deleting a Member ------------------------------ 4");
            System.out.println("To check the Books List is empty ------------------ 5");
            System.out.println("To check the Member List is empty ----------------- 6");
            System.out.println("To check the Books List size ---------------------- 7");
            System.out.println("To check the Member List size --------------------- 8");
            System.out.println("To issue Book to a Member ------------------------- 9");
            System.out.println("To return the book from the member ---------------- 10");
            System.out.println("To print books issued ----------------------------- 11");
            System.out.println("To check if the books is issued ------------------- 12");
            System.out.println("To print all books in the library ----------------- 13");
            System.out.println("To print all name of the members in the library --- 14");
            System.out.println("To exit from the library -------------------------- 0");
            System.out.println();

            System.out.print("Number Of Service =>   ");
            String in = kbd.next();
            while (!isNumeric(in)){
                System.out.println("Please Enter a number from (1 to 14) to choose service < Enter 0 to exit >: ");
                in = kbd.next();
            }
            int services = Integer.parseInt(String.valueOf(in));
            switch (services) {
                case 1 -> {
                    Book tempBook = new Book();
                    System.out.println("Please fill in the following book information: ");
                    System.out.println("The Title: ");
                    kbd.nextLine();// to read String after reading int
                    tempBook.setTitle(kbd.nextLine());
                    System.out.println("The First Author: ");
                    tempBook.setAuthor1(kbd.nextLine());
                    System.out.println("The Second Author: ");
                    tempBook.setAuthor2(kbd.nextLine());
                    System.out.println("The Publisher: ");
                    tempBook.setPublisher(kbd.nextLine());
                    System.out.println("Year Of Publication ");
                    tempBook.setYearPublication(kbd.nextInt());
                    System.out.println("ISBN: ");
                    tempBook.setIsbn(kbd.next());
                    System.out.println("Accession Number: ");
                    long acce = kbd.nextLong();
                    if (system.searchBook(acce) != -1)
                        while (system.searchBook(acce) != -1) {
                            System.out.println("This number is taken. Please try another accession number:    (NOTE: the last accession number is ("+(1000+system.sizeBooksList())+") )");
                            acce = kbd.nextLong();
                        }
                        tempBook.setAccessionNum(acce);
                    if (system.addBook(tempBook)){
                        System.out.println("A book has been successfully added");
                    }
                    else System.out.println("The book is already exist in book list");
                }
                case 2 -> {
                    System.out.println("Enter the Accession Number of the book you want to delete: ");
                    long acc = kbd.nextLong();
                    if (system.deleteBook(acc)) System.out.println("A book has been successfully deleted");
                    else System.out.println("There is no book with this number, Or the book is issued to member < first you must return the book from member >");
                }
                case 3 -> {
                    LibMember tempMember = new LibMember();
                    System.out.println("Please fill in the following member information: ");
                    System.out.println("The first name: ");
                    tempMember.setFirstName(kbd.next());
                    System.out.println("The last name: ");
                    tempMember.setLastName(kbd.next());
                    System.out.println("Gender: Male 'M' or Female 'F'");
                    tempMember.setGender(kbd.next().charAt(0));
                    System.out.println("CPR Number: ");
                    long cp = kbd.nextLong();
                    if (system.searchMember(cp) != -1) {
                        int choose=2;
                        while (system.searchMember(cp) != -1) {
                            System.out.println("This CPR number already exist , for try another cpr number press 1 , to return to the services press 2");
                             choose = kbd.nextInt();
                            if (choose == 1) {
                                System.out.println("Cpr Number: ");
                                cp = kbd.nextLong();
                            }
                            else break;
                        }
                        if (choose==2) break;
                        else if (choose !=1)throw new NoSuchElementException();
                    }
                    else tempMember.setCprNum(cp);
                    System.out.println("Telephone Number: ");
                    tempMember.setTeleNum(kbd.next());
                    if (system.addMember(tempMember))System.out.println("A member has been added successfully");
                    else System.out.println("The member is already exist in the member list");

                }
                case 4 -> {
                    System.out.println("Enter the cpr number for the member to delete it: ");
                    long cp = kbd.nextLong();
                    if (!system.deleteMember(cp)){
                        System.out.println("There is no member with this number");
                    }
                    else {
                        system.deleteMember(cp);
                        System.out.println("A member has been successfully deleted");
                    }
                }
                case 5 -> {
                    if (system.isEmptyBooksList()) System.out.println("The book list is empty");
                    else System.out.println("The book list is not empty");
                }
                case 6 -> {
                    if (system.isEmptyMembersList()) System.out.println("The member list is empty");
                    else System.out.println("The member list is not empty");
                }
                case 7 -> System.out.println("The size of book list is: "+ system.sizeBooksList());
                case 8 -> System.out.println("The size of member list is: "+ system.sizeMembersList());
                case 9 -> {
                    System.out.println("Enter the accession number of the book: ");
                    long acce = kbd.nextLong();
                    System.out.println("Enter the cpr number of the member: ");
                    long cp =kbd.nextLong();
                    if (system.issuedBook(acce,cp)) System.out.println("The book has been successfully issued to the member");
                    else System.out.println("The information is incorrect");
                }
                case 10 -> {
                    System.out.println("Enter the accession number of the book: ");
                    long acc = kbd.nextLong();
                    if (system.returnBook(acc)) System.out.println("The book has been returned to library successfully");
                    else System.out.println("The book is not issued to any member or is not exist in the books list ");
                }
                case 11 -> {
                    System.out.println("Enter the cpr number for the member");
                    long cpr = kbd.nextLong();
                    system.printBooksIssued(cpr);
                }
                case 12 -> {
                    System.out.println("Enter the Accession Number of the book");
                    long acce= kbd.nextLong();
                    if (system.isBookIssued(acce)) System.out.println("The book is issued");
                    else System.out.println("The book is not issued ,Or the book is not exist in book list");
                }
                case 13 -> {
                    if (system.sizeBooksList()!=0) {
                        System.out.println("The Books List has the following Books: ");
                        system.printBooksList();
                    }
                    else
                    System.out.println("There No Books in the Books List");
                }
                case 14 -> {
                    if (system.sizeMembersList()!=0) {
                        System.out.println("The Member List has the following Member: ");
                        system.printMemberList();
                    }
                    else
                        System.out.println("There No Member in the Members List");
                }
                case 0 -> menu=2;
                default -> System.out.println("(Incorrect Input) Please Enter a number from (1-14), < Enter 0 to exit >: ");
            }
            System.out.println("\n");
        }// end while loop

        // close kbd Scanner
        kbd.close();  

        System.out.println("------------------< End Library Main >-------------------");
        System.out.println("------------------< End Library Main >-------------------");

    } // end main method

    // to check input is correct
    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch(NumberFormatException e){
            return false;
        }
        
    }



} // end LibraryMain class
