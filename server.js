// Import necessary modules and models
import sequelize from './config/database.js'; // Import the Sequelize connection
import Student from './student.js'; // Import the Student model
// Define the main function to run database operations
const main = async () => {
try {
// Test the database connection
// This ensures we can successfully connect to the database
await sequelize.authenticate();
console.log('Database connected successfully.');
    // Sync the database
    // This creates tables based on our models if they don't exist
    // { force: false } means it won't drop existing tables
    await sequelize.sync({ force: false });
    console.log('Database synced.');

    // Example: Create a new student
    // This demonstrates how to use the Student model to insert data
    const newStudent = await Student.create({ 
        name: 'John Doe', 
        age: 18, 
        class: '12-A' 
    });
    console.log('New student created:', newStudent.toJSON());

} catch (error) {
    // If any error occurs during the process, it will be caught here
    console.error('Error connecting to the database:', error);
} finally {
    // This block always runs, whether there was an error or not
    // Close the database connection to free up resources
    await sequelize.close();
}

};
// Run the main function
// This executes all the database operations defined above
main();