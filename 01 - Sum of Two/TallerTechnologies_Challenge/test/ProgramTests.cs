using System;
using Xunit;

namespace TallerTechnologies.Tests
{
    public class ProgramTests
    {
        [Theory()]
        [InlineData("123456", "123456", "777777")]
        public void SumOfTwoNumbersTest_GivingValidExpectedInputWithSameLenght_ReturnExpectedValue(string number1, string number2, string expectedOuput)
        {
            // act & arrange
            var sut = StringNumberOperator.SumOfTwoNumbers(number1, number2);
            // assert
            Assert.True(sut.Equals(expectedOuput));
        }

        [Theory(DisplayName = "Testing Second Number Lower than First Number")]
        [InlineData("123456789", "123456", "777777789")]
        public void SumOfTwoNumbersTest_GivingValidExpectedInputWithFirstNumberLongerThanSecond_ReturnExpectedValue(string number1, string number2, string expectedOuput)
        {
            // act & arrange
            var sut = StringNumberOperator.SumOfTwoNumbers(number1, number2);

            // assert
            Assert.True(sut.Equals(expectedOuput));
        }

        [Theory(DisplayName = "Testing First Number Lower than Second Number")]
        [InlineData("123456", "123456789", "101010101010000")]
        public void SumOfTwoNumbersTest_GivingValidExpectedInputWithSecondNumberLongerThanFirst_ReturnExpectedValue(string number1, string number2, string expectedOuput)
        {
            // act & arrange
            var sut = StringNumberOperator.SumOfTwoNumbers(number1, number2);

            // assert
            Assert.True(sut.Equals(expectedOuput));
        }

        [Theory(DisplayName = "Testing Exceptions with Invalid Numbers")]
        [InlineData("", "123456789", "Invalid value given in the first number")]
        [InlineData("123456789", "", "Invalid value given in the second number")]
        public void SumOfTwoNumbersTest_NumberWithInvalidValue_ReturnArgumentOutOfRangeException(string number1, string number2, string expectedOuput)
        {
            // act & arrange
            void act() => StringNumberOperator.SumOfTwoNumbers(number1, number2);

            //assert
            ArgumentOutOfRangeException exception = Assert.Throws<ArgumentOutOfRangeException>(act);

            Assert.Equal(expectedOuput, exception.Message);
        }
    }
}