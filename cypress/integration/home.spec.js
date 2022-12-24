describe('Home Page', () => {

  it('Can visit the home page', () => {
    cy.visit('/');
  });

  it("There are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
});
