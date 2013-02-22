using NUnit.Framework;

namespace Calculator
{
    [TestFixture]
    class CalculatorTest
    {
        [Test]
        public void ShouldBeAbleToAddTwoPositiveIntegers()
        {
            var calculator = new Calculator();
            Assert.That(calculator.Add(2, 4), Is.EqualTo(6));
        }
    }
}
