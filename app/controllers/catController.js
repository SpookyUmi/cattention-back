const { catDataMapper } = require("../dataMappers");

const catController = {
    /** Check the params from url
   * @param {Object} [data] - the params of the url
   * @param {integer} [data.status] - status of the cat (adoption or lost)
   * @param {integer} [data.location] - where is the cat
   * @param {integer} [data.gender] - the gender of the cat
   * @param {integer} [data.age] - the age of the cat
   * @param {integer} [data.breed] - the breed of the cat
   * @returns {Object|null} an object with error or time and difficulty or null
   */

    _checkUrlParams: (data) => {
      if (Object.keys(data).length === 0) {
        return null;
      }
      const keys = Object.keys(data);

      for (key of keys) {
        const validKey = key.split("").every(letter => !'#"<>%'.includes(letter));
        if (!validKey) {
          return { error: "Wrong url's format" };
        } else if (!["status", "location", "gender", "age", "breed"].includes(key)) {
          return { error: "Wrong url's: invalid keys" };
        }
        if (data[key] && typeof data[key] != "string") {
          data[key] = parseInt(data[key], 10);
        }
      }

      // Check the values of the params

      if (data.status && (data.status !== 'Adoption' || data.status !== 'Perdu') || data.location && (isNan(data.location) || (data.location < 1 && data.location > 6)) || data.gender && (isNan(data.gender) || (data.gender < 1 && data.gender > 3)) || data.age && (isNan(data.age) || (data.age < 1 && data.age > 4)) || data.breed && (isNan(data.breed) || (data.breed < 1 && data.breed > 6))) {
        return {error: "Wrong url's: invalid values"}
      }

      // Adding default values for missing keys
      ["status", "location", "gender", "age", "breed"].forEach(key => { data[key] = (!data.hasOwnProperty(key)) ? null : data[key] });

      return data;
    },

    getAllCats: async (_, res, next) => {
      try {
        const cats = await catDataMapper.getAllCats();
        if (!cats) {
          next();
        } else {
          res.status(200).json({ data: cats });
        }
      } catch (error) {
        next(error)
      }
    },

}

module.exports = catController;
