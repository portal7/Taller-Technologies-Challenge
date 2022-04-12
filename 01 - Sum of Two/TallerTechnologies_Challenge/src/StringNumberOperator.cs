using TallerTechnologies.Extensions;
using System;

namespace TallerTechnologies
{
    public class StringNumberOperator
    {
        public static string SumOfTwoNumbers(string num1, string num2)
        {
            var firstNumberArray = num1.ConverToIntArray();
            var secondNumberArray = num2.ConverToIntArray();

            var firstLenght = firstNumberArray.Length;
            var secondLenght = secondNumberArray.Length;

            if (firstLenght <= 0)
                throw new ArgumentOutOfRangeException(paramName: num1, message: "Invalid value given in the first number");

            if (secondLenght <= 0)
                throw new ArgumentOutOfRangeException(paramName: num2, message: "Invalid value given in the second number");

            Array.Reverse(secondNumberArray);

            if (firstLenght > secondLenght)
            {
                Array.Resize(ref secondNumberArray, firstLenght);
            }
            else if (secondLenght > firstLenght)
            {
                var diff = (secondLenght - firstLenght);
                Array.Resize(ref firstNumberArray, secondLenght + diff);
            }

            var finalArray = new int[(firstLenght > secondLenght ? firstLenght : secondLenght)]; ;

            for (int i = 0; i < firstLenght; i++)
            {
                var total = Convert.ToInt32(firstNumberArray[i]) + Convert.ToInt32(secondNumberArray[i]);
                finalArray[i] = total;
            }

            return string.Join(string.Empty, finalArray);
        }
    }
}
