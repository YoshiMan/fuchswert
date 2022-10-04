// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.6.0;

contract Fuchswert {

    string public letzterName;
    uint256 public fuchswertProzent;

    function fuchswert(string memory name) public returns (uint256) {
        letzterName = name;
        if (strlen(name) == 0) {
            fuchswertProzent = 0;
        } else {
            uint256 anzahlDerFuchsBuchstaben;

            anzahlDerFuchsBuchstaben += zaehleBuchstaben("f", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("F", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("u", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("U", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("c", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("C", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("h", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("H", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("s", name);
            anzahlDerFuchsBuchstaben += zaehleBuchstaben("S", name);

            fuchswertProzent = (anzahlDerFuchsBuchstaben * 100) / strlen(name);
        }
        return fuchswertProzent;
    }

    function zaehleBuchstaben(string memory letter, string memory name)
        private
        pure
        returns (uint256)
    {
        bytes memory letterBytes = bytes(letter);
        bytes memory nameBytes = bytes(name);

        uint256 anzahl = 0;
        for (uint256 i = 0; i < nameBytes.length; i++) {
            if (letterBytes[0] == nameBytes[i]) {
                anzahl += 1;
            }
        }
        return anzahl;
    }

    // see https://github.com/ensdomains/ens-contracts/blob/d9e260dcb87843c6b0161be019aeb55e2da6ef5d/contracts/ethregistrar/StringUtils.sol
    /**
     * @dev Returns the length of a given string
     *
     * @param s The string to measure the length of
     * @return The length of the input string
     */
    function strlen(string memory s) internal pure returns (uint256) {
        uint256 len;
        uint256 i = 0;
        uint256 bytelength = bytes(s).length;
        for (len = 0; i < bytelength; len++) {
            bytes1 b = bytes(s)[i];
            if (b < 0x80) {
                i += 1;
            } else if (b < 0xE0) {
                i += 2;
            } else if (b < 0xF0) {
                i += 3;
            } else if (b < 0xF8) {
                i += 4;
            } else if (b < 0xFC) {
                i += 5;
            } else {
                i += 6;
            }
        }
        return len;
    }
}
