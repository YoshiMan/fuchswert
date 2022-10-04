// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.6.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";

import "../contracts/Fuchswert.sol";

contract FuchswertTest {
    function testInitialBalanceUsingDeployedContract() public {
        Fuchswert simpleStorage = Fuchswert(DeployedAddresses.Fuchswert());

        uint256 expected = 100;

        Assert.equal(
            simpleStorage.fuchswert("shcusf"),
            expected,
            "fuchswert should be 100 %"
        );
    }

    function testInitialBalanceUsingDeployedContract0() public {
        Fuchswert simpleStorage = Fuchswert(DeployedAddresses.Fuchswert());

        uint256 expected = 100;

        Assert.equal(
            simpleStorage.fuchswert("f"),
            expected,
            "fuchswert should be 100 %"
        );
    }

    function testInitialBalanceUsingDeployedContract1() public {
        Fuchswert simpleStorage = Fuchswert(DeployedAddresses.Fuchswert());

        uint256 expected = 25;

        Assert.equal(
            simpleStorage.fuchswert("zero fucks given"),
            expected,
            "fuchswert should be 25 %"
        );
    }

    function testInitialBalanceUsingDeployedContract2() public {
        Fuchswert simpleStorage = Fuchswert(DeployedAddresses.Fuchswert());

        uint256 expected = 0;

        Assert.equal(
            simpleStorage.fuchswert("Jon Doe"),
            expected,
            "fuchswert should be 0 %"
        );
    }

    function testInitialBalanceUsingDeployedContract3() public {
        Fuchswert simpleStorage = Fuchswert(DeployedAddresses.Fuchswert());

        uint256 expected = 14;

        Assert.equal(
            simpleStorage.fuchswert("Max Mustermann"),
            expected,
            "fuchswert should be 14 %"
        );
    }

    function testInitialBalanceUsingDeployedContract4() public {
        Fuchswert simpleStorage = Fuchswert(DeployedAddresses.Fuchswert());

        uint256 expected = 0;

        Assert.equal(
            simpleStorage.fuchswert(""),
            expected,
            "fuchswert should be 0 %"
        );
    }

    function testInitialBalanceUsingDeployedContract5() public {
        Fuchswert simpleStorage = Fuchswert(DeployedAddresses.Fuchswert());

        uint256 expected = 17;

        Assert.equal(
            simpleStorage.fuchswert("Unicode snowman ☃"),
            expected,
            "fuchswert should be 17 %"
        );
    }
}
