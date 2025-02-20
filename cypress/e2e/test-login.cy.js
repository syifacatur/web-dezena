describe('Test Login di Aplikasi PHP', () => {
  it('Harus bisa login dengan akun yang benar', () => {
    cy.visit('http://localhost/web-dezena/login.php'); // Sesuaikan URL dengan aplikasi Anda
    cy.get('input[name="email"]').type('siswa@gmail.com'); // Isi username
    cy.get('input[name="password"]').type('siswa'); // Isi password
    cy.get('button[type="submit"]').click(); // Klik tombol login
    cy.url().should('include', '/dashboard'); // Pastikan login berhasil
  });
});
