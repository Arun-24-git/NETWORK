import java.util.Scanner;
class Cpu {
int price;

class processor{
String no_of_cores,manufacturer;
void display()
{
System.out.println("Processor manufacturer:"+manufacturer);
System.out.println("No of cores of processor:"+no_of_cores);
}
}
static class Ram
{
int memory;
String manufacturer;
void display()
{
System.out.println("Ram memory:"+memory);
System.out.println("Ram manufacturer:"+manufacturer);
}
}
void display()
{
System.out.println("Price:"+price);
}
}
public class cpuinfo
{
public static void main(String args[])
{
Cpu ncpu=new Cpu();
Cpu.processor processor=ncpu.new processor();
Cpu.Ram ram=new Cpu.Ram();
Scanner sc=new Scanner(System.in);
System.out.println("enter the processor manufacturer:");
processor.manufacturer=sc.next();
System.out.print("Enter the number of cores in the processor: ");
processor.no_of_cores = sc.next();
System.out.println("enter the Ram manufacturer:");
ram.manufacturer=sc.next();
System.out.print("Enter the RAM memory size: ");
ram.memory = sc.nextInt();
System.out.println("enter the Price:");
ncpu.price=sc.nextInt();

System.out.println("\n...Information of processor and RAM....");
processor.display();
ram.display();
ncpu.display();
}
}



