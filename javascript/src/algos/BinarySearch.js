'use strict';

class BinarySearch {
  constructor(array, element) {
    this.array = array;
    this.element = element;
    this._minIndex = 0;
    this._maxIndex = array.length - 1;
  }

  findIndex() {
    while(this._minIndex <= this._maxIndex) {
      let midIndex = Math.floor((this._minIndex + this._maxIndex) / 2);
      let foundElement = this.array[midIndex];

      if(foundElement === this.element) {
        return midIndex;
      }

      if (foundElement > this.element) {
        this._maxIndex = midIndex - 1;
      } else {
        this._minIndex = midIndex + 1;
      }
    }

    return null;
  }
}

module.exports = BinarySearch;
