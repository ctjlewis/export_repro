/**
 * A test class.
 *
 * @export
 */
class TestA {
  /**
   * Sets a test property.
   */
  constructor() {
    this.test = 42;
  }

  /**
   * A test method.
   *
   * @export
   */
  myTestMethod() {
    this.test *= 2;
  }
}

module.exports = {
  TestA,
};
