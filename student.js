// Import necessary modules
import { DataTypes } from 'sequelize';
import sequelize from './config/database.js'; // Import the database connection
// Define and export the Student model
const Student = sequelize.define('Student', {
// Define the name field
// DataTypes.STRING represents a variable-length string
// allowNull: false means this field is required
name: { type: DataTypes.STRING, allowNull: false },
// Define the age field
// DataTypes.INTEGER represents a whole number
// allowNull: false means this field is required
age: { type: DataTypes.INTEGER, allowNull: false },
// Define the class field (optional)
// DataTypes.STRING represents a variable-length string
// allowNull: true means this field is optional
class: { type: DataTypes.STRING, allowNull: true },
});
// Export the Student model
// This allows other parts of the application to import and use this model
export default Student;