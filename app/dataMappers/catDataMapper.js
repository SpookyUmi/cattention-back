const client = require("./pool");

const catDataMapper = {
  getAllCats: async () => {
    try {
      let cats = [];
      const result = await client.query('SELECT * FROM "cats"');
      cats = result.rows;

      if (cats.length === 0) {
        return {error: "There is no cats"};
      }
      return cats
    } catch (error) {
      throw error;
    }
  }
}

module.exports = catDataMapper;
