'use strict';

const BinarySearch = require(`../../src/algos/BinarySearch`);
const getRandomInt = require(`../../src/libs/getRandom`);

describe('BinarySearch', () => {
  it('returns correct element position', () => {
    const array = [...Array(100).keys()].map(i => ++i);
    const element = getRandomInt(1, 100);
    const binarySearch = new BinarySearch(array, element);

    expect(binarySearch.findIndex()).toBe(element - 1);
  });

  describe('when element does not exist in array', () => {
    it('returns that element does not exist', () => {
      const array = [...Array(100).keys()];
      const element = -1;
      const binarySearch = new BinarySearch(array, element);

      expect(binarySearch.findIndex()).toBe(null);
    });
  });
});
