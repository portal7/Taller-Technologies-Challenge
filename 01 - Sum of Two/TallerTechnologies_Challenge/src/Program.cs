using System;
using TallerTechnologies.Extensions;

namespace TallerTechnologies
{
    public static class Program
    {
        const string INVALID_PARAMETER_GIVE = "Invalid value parameter given on {0} value";


        static void Main()
        {
            Console.WriteLine("Enter the first number: ");
            var firstNumber = Console.ReadLine();

            if (!firstNumber.IsValidPositiveNumber())
            {
                Console.WriteLine(string.Format(INVALID_PARAMETER_GIVE, "First Number"));
                return;
            }

            Console.WriteLine("Enter the second number: ");
            var secondNumber = Console.ReadLine();

            if (!secondNumber.IsValidPositiveNumber())
            {
                Console.WriteLine(string.Format(INVALID_PARAMETER_GIVE, "Second Number"));
                return;
            }

            // call the function Sum and pass the two values as parameters and receive a string as result
            var result = StringNumberOperator.SumOfTwoNumbers(firstNumber, secondNumber);

            Console.WriteLine("The sum of the two numbers is: " + result);
            Console.ReadKey();
        }
    }
}
