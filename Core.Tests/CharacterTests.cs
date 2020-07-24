﻿using FluentAssertions;
using NUnit.Framework;

namespace PCSharpGen.Core.Tests
{
    public class CharacterTests
    {
        [Test]
        public void NameTest()
        {
            var c = new Character {Name = "Sir Testy McTestington"};
            c.Name.Should().Be("Sir Testy McTestington");
        }
    }
}
