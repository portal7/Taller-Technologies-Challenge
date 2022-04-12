using System;
using System.Text.RegularExpressions;

namespace TallerTechnologies.Extensions
{
    /// <summary>
    /// Extensions methods
    /// </summary>
    public static class StringExtension
    {
        /// <summary>
        /// Converts a String to an Array of <see cref="int"/>/>
        /// </summary>
        /// <param name="stringNumber">A string to convert</param>
        /// <returns>Array of Ints</returns>
        public static int[] ConverToIntArray(this string stringNumber)
        {
            var numArray = stringNumber.ToCharArray();
            var result = new int[numArray.Length];

            for (int i = 0; i < numArray.Length; i++)
            {
                result[i] = Convert.ToInt32(char.ToString(numArray[i]));
            }

            return result;
        }

        /// <summary>
        /// Validate if a given stringNumber contains valid digits
        /// </summary>
        /// <param name="stringNumber">Number in string format</param>
        /// <returns>true if all digits are numbers, otherwise returns false </returns>
        public static bool IsValidPositiveNumber(this string stringNumber) => new Regex("^[0-9]+$").IsMatch(stringNumber);
    }
}
