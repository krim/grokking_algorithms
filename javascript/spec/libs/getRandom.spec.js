'use strict';

const getRandomInt = require(`../../src/libs/getRandom`);

expect.extend({
  toBeWithinRange(received, floor, ceiling) {
    const pass = received >= floor && received <= ceiling;
    if (pass) {
      return {
        message: () => `expected ${received} not to be within range ${floor} - ${ceiling}`,
        pass: true,
      };
    } else {
      return {
        message: () => `expected ${received} to be within range ${floor} - ${ceiling}`,
        pass: false,
      };
    }
  },
});

describe('getRandomInt', () => {
  it('returns random integer value from a range', () => {
    expect(getRandomInt(0, 10)).toBeWithinRange(0, 10);
    expect(getRandomInt(10, 15)).toBeWithinRange(0, 15);
  });
});
