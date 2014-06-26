/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140424-64 [Jun 25 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of ssdt6.dat, Thu Jun 26 11:37:01 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000006ED (1773)
 *     Revision         0x01
 *     Checksum         0xA5
 *     OEM ID           "Intel_"
 *     OEM Table ID     "IsctTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("ssdt6.aml", "SSDT", 1, "Intel_", "IsctTabl", 0x00001000)
{

    External (_SB_.IFFS.FFSS, UnknownObj)
    External (_SB_.PCI0.IGPU.ASLC, FieldUnitObj)
    External (_SB_.PCI0.IGPU.ASLE, FieldUnitObj)
    External (_SB_.PCI0.IGPU.PARD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.STAT, FieldUnitObj)
    External (_SB_.PCI0.IGPU.TCHE, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.RPIN, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.SCTF, MethodObj)    // 2 Arguments
    External (ICNF, FieldUnitObj)

    Scope (\_SB)
    {
        Device (IAOE)
        {
            OperationRegion (ISCT, SystemMemory, 0xD9B3ED98, 0x0011)
            Field (ISCT, AnyAcc, Lock, Preserve)
            {
                WKRS,   8, 
                AOCE,   8, 
                FFSE,   8, 
                ITMR,   8, 
                ECTM,   32, 
                RCTM,   32, 
                GNPT,   32, 
                ATOW,   8
            }

            Name (_HID, "INT33A0")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (IBT1, Zero)
            Name (IBT2, Zero)
            Name (INSB, Zero)
            Name (WTMS, Zero)
            Name (AWT0, Zero)
            Name (AWT1, Zero)
            Name (AWT2, Zero)
            Name (PTSL, Zero)
            Name (SLPD, Zero)
            Name (IMDS, Zero)
            Name (IWDT, Zero)
            Name (IIST, Zero)
            Method (GABS, 0, NotSerialized)
            {
                Return (ICNF) /* External reference */
            }

            Method (GAOS, 0, NotSerialized)
            {
                Store (One, IIST) /* \_SB_.IAOE.IIST */
                If (LEqual (ITMR, One))
                {
                    And (IBT1, One, Local0)
                    If (Local0)
                    {
                        \_SB.PCI0.LPCB.EC0.SCTF (Zero, One)
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.SCTF (Zero, Zero)
                    }

                    Or (Local0, And (IMDS, 0x02), Local0)
                    Return (Local0)
                }
                Else
                {
                    Store (IBT1, Local0)
                    And (Local0, One, Local0)
                    If (Local0)
                    {
                        \_SB.PCI0.LPCB.EC0.SCTF (Zero, One)
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.SCTF (Zero, Zero)
                    }

                    Or (Local0, And (IMDS, 0x02), Local0)
                    Return (Local0)
                }
            }

            Method (SAOS, 1, NotSerialized)
            {
                Store (One, IIST) /* \_SB_.IAOE.IIST */
                If (And (\_SB.PCI0.IGPU.TCHE, 0x0100))
                {
                    If (LEqual (ITMR, One))
                    {
                        If (LAnd (LAnd (And (IBT1, One), LOr (And (\_SB.IAOE.WKRS, 
                            0x02), And (\_SB.IAOE.WKRS, 0x10))), LNot (And (Arg0, One))))
                        {
                            If (LNot (\_SB.PCI0.IGPU.PARD ()))
                            {
                                Store (And (\_SB.PCI0.IGPU.STAT, 0xFFFFFFFC), \_SB.PCI0.IGPU.STAT) /* External reference */
                                Store (Or (\_SB.PCI0.IGPU.ASLC, 0x0100), \_SB.PCI0.IGPU.ASLC) /* External reference */
                                Store (One, \_SB.PCI0.IGPU.ASLE) /* External reference */
                            }
                        }
                    }
                    Else
                    {
                        If (LAnd (LAnd (And (IBT1, One), LOr (And (\_SB.IAOE.WKRS, 
                            0x02), And (\_SB.IAOE.WKRS, 0x10))), LNot (And (Arg0, One))))
                        {
                            If (LNot (\_SB.PCI0.IGPU.PARD ()))
                            {
                                Store (And (\_SB.PCI0.IGPU.STAT, 0xFFFFFFFC), \_SB.PCI0.IGPU.STAT) /* External reference */
                                Store (Or (\_SB.PCI0.IGPU.ASLC, 0x0100), \_SB.PCI0.IGPU.ASLC) /* External reference */
                                Store (One, \_SB.PCI0.IGPU.ASLE) /* External reference */
                            }
                        }
                    }
                }

                If (LEqual (ITMR, One))
                {
                    Store (And (Arg0, 0x02), IMDS) /* \_SB_.IAOE.IMDS */
                    And (IBT1, 0xFE, Local0)
                    Or (Local0, And (Arg0, One), IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    Store (IBT1, Local0)
                    And (Local0, 0xFE, Local0)
                    Or (Local0, And (Arg0, One), Local0)
                    Store (And (Arg0, 0x02), IMDS) /* \_SB_.IAOE.IMDS */
                    Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                }
            }

            Method (GANS, 0, NotSerialized)
            {
                Return (INSB) /* \_SB_.IAOE.INSB */
            }

            Method (SANS, 1, NotSerialized)
            {
                Store (And (Arg0, One), INSB) /* \_SB_.IAOE.INSB */
            }

            Method (GWLS, 0, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x04), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (One, Local0)
                    Store (IBT1, Local1)
                    Or (Local0, And (Local1, 0x0E), Local0)
                    Return (Local0)
                }
                Else
                {
                    Store (IBT2, Local0)
                    Or (Local0, One, Local0)
                    Store (IBT1, Local1)
                    Or (Local0, And (Local1, 0x0E), Local0)
                    Return (Local0)
                }
            }

            Method (SWLS, 1, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x04), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (IBT1, Local0)
                    And (Local0, 0xF1, Local0)
                    Or (Local0, And (Arg0, 0x0E), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x04, Local0)
                        }
                    }

                    Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                    \_SB.PCI0.LPCB.EC0.SCTF (One, Local0)
                }
                Else
                {
                    Store (IBT1, Local0)
                    And (Local0, 0xF1, Local0)
                    Or (Local0, And (Arg0, 0x0E), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x04, Local0)
                        }
                    }

                    Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                    \_SB.PCI0.LPCB.EC0.SCTF (One, Local0)
                }
            }

            Method (GWWS, 0, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x08), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (One, Local0)
                    Store (IBT1, Local1)
                    Or (Local0, ShiftRight (And (Local1, 0x70), 0x03), Local0)
                    Return (Local0)
                }
                Else
                {
                    Store (IBT2, Local0)
                    ShiftRight (Or (Local0, 0x02), One, Local0)
                    Store (IBT1, Local1)
                    Or (Local0, ShiftRight (And (Local1, 0x70), 0x03), Local0)
                    Return (Local0)
                }
            }

            Method (SWWS, 1, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x08), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (IBT1, Local0)
                    And (Local0, 0x8F, Local0)
                    Or (Local0, ShiftLeft (And (Arg0, 0x0E), 0x03), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x20, Local0)
                        }
                    }

                    Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    Store (IBT1, Local0)
                    And (Local0, 0x8F, Local0)
                    Or (Local0, ShiftLeft (And (Arg0, 0x0E), 0x03), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x20, Local0)
                        }
                    }

                    Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                }
            }

            Method (SASD, 1, NotSerialized)
            {
                If (LAnd (And (ICNF, 0x10), LGreater (Arg0, Zero)))
                {
                    If (LEqual (ITMR, One))
                    {
                        Store (Arg0, RCTM) /* \_SB_.IAOE.RCTM */
                    }
                    Else
                    {
                        Store (Arg0, ECTM) /* \_SB_.IAOE.ECTM */
                    }

                    Store (And (ECTM, 0xFF), AWT0) /* \_SB_.IAOE.AWT0 */
                    Store (ShiftRight (And (ECTM, 0xFF00), 0x08), AWT1) /* \_SB_.IAOE.AWT1 */
                    Store (ShiftRight (And (ECTM, 0x00FF0000), 0x10), AWT2) /* \_SB_.IAOE.AWT2 */
                    Store (WTMS, Local0)
                    Store (Or (0x81, Local0), WTMS) /* \_SB_.IAOE.WTMS */
                }
                Else
                {
                    If (LEqual (ITMR, One))
                    {
                        Store (Zero, RCTM) /* \_SB_.IAOE.RCTM */
                    }
                    Else
                    {
                        Store (Zero, ECTM) /* \_SB_.IAOE.ECTM */
                        Store (Zero, WTMS) /* \_SB_.IAOE.WTMS */
                    }

                    Store (Arg0, SLPD) /* \_SB_.IAOE.SLPD */
                    Store (Arg0, ECTM) /* \_SB_.IAOE.ECTM */
                }
            }

            Method (GPWR, 0, NotSerialized)
            {
                If (And (WKRS, 0x2F))
                {
                    Return (And (WKRS, 0x2F))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (GPCS, 0, NotSerialized)
            {
                Return (\_SB.PCI0.LPCB.EC0.RPIN (0x11))
            }

            Method (GAWD, 0, NotSerialized)
            {
                Return (IWDT) /* \_SB_.IAOE.IWDT */
            }

            Method (SAWD, 1, NotSerialized)
            {
                Store (Arg0, IWDT) /* \_SB_.IAOE.IWDT */
            }
        }
    }
}

