namespace SomeTestProject;

public class SomeTest1
{
    [Fact]
    public void Test1()
    {
        // Arrange
        int x = 3;
        int y = 2;
        int expected = 5;

        // Act
        Maths maths = new Maths();
        int actual = maths.Add(x, y);

        // Assert
        actual.Should().Be(expected);
    }
}
