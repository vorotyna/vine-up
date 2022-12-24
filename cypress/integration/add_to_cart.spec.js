describe('Cart', () => {
  beforeEach(() => {
    cy.visit("/");

    cy.get(".products article").should("have.length", 2);

    cy.get(".nav-link")
      .contains("Login")
      .click();

    cy.get("#email")
      .type("liso@piso.com");

    cy.get("#password")
      .type("password");

    cy.contains("Submit")
      .click();
  });

  it("Click to add to cart and increase cart count by one", () => {
    cy.get(".btn")
      .click({ force: true });

    cy.get(".nav-link")
      .contains("My Cart (1)")
      .should('be.visible');
  });

});