let inParse = (odata) => {
    if (Array.isArray(odata) && odata.length > 0) {
        return odata.map(item => {
            return `"${item}"`;
        }).join(",");
    }
};
module.exports={
    inParse
};
