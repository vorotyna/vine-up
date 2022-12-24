describe('Products', () => {
  beforeEach(() => {
    cy.visit("/");
    cy.get(".products article").should("have.length", 2);
  });

  it("Clicking on a product box redirects the user to the product's detail page", () => {
    cy.get(".products article")
      .first()
      .click();

    cy.get(".product-detail")
      .contains("The Scented Blade");
  });

});