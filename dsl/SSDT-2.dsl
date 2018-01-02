/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of /Users/matt/Builds/Asus-Q501LA-Hackintosh/EFI/CLOVER/ACPI/origin/SSDT-2.aml, Thu Dec 28 23:20:17 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002EB1 (11953)
 *     Revision         0x01
 *     Checksum         0x43
 *     OEM ID           "DptfTa"
 *     OEM Table ID     "DptfTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "DptfTa", "DptfTabl", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.AAC0, FieldUnitObj)
    External (_PR_.ACRT, FieldUnitObj)
    External (_PR_.APSV, FieldUnitObj)
    External (_PR_.CBMI, FieldUnitObj)
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CLVL, FieldUnitObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU0._PTC, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._TPC, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._TSD, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0._TSS, IntObj)    // Warning: Unknown object
    External (_PR_.CPU0.TSMC, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU0.TSMF, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_PR_.CTC0, FieldUnitObj)
    External (_PR_.CTC1, FieldUnitObj)
    External (_PR_.CTC2, FieldUnitObj)
    External (_PR_.PL10, FieldUnitObj)
    External (_PR_.PL11, FieldUnitObj)
    External (_PR_.PL12, FieldUnitObj)
    External (_PR_.PL20, FieldUnitObj)
    External (_PR_.PL21, FieldUnitObj)
    External (_PR_.PL22, FieldUnitObj)
    External (_PR_.PLW0, FieldUnitObj)
    External (_PR_.PLW1, FieldUnitObj)
    External (_PR_.PLW2, FieldUnitObj)
    External (_PR_.TAR0, FieldUnitObj)
    External (_PR_.TAR1, FieldUnitObj)
    External (_PR_.TAR2, FieldUnitObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.B0D4, DeviceObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.GFX0.LCDD._BCL, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.LCDD._BCM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.LCDD._BQC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.LCDD._DCS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.RRAM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.TH1L, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.TH1R, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.MHBR, FieldUnitObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_TZ_.THRM, UnknownObj)
    External (CTDP, FieldUnitObj)
    External (DCMP, FieldUnitObj)
    External (DISE, FieldUnitObj)
    External (DPAP, FieldUnitObj)
    External (DPCP, FieldUnitObj)
    External (DPPP, FieldUnitObj)
    External (DPTF, FieldUnitObj)
    External (ECEU, FieldUnitObj)
    External (LPER, FieldUnitObj)
    External (LPMP, FieldUnitObj)
    External (LPMV, FieldUnitObj)
    External (LPOE, FieldUnitObj)
    External (LPOP, FieldUnitObj)
    External (LPOS, FieldUnitObj)
    External (LPOW, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (MEMD, FieldUnitObj)
    External (PCHD, FieldUnitObj)
    External (PDC0, IntObj)
    External (PPSZ, FieldUnitObj)
    External (PWRS, FieldUnitObj)
    External (SADE, FieldUnitObj)
    External (TCNT, FieldUnitObj)
    External (TGFG, FieldUnitObj)
    External (TSOD, FieldUnitObj)

    Scope (\_SB)
    {
        Device (IETM)
        {
            Name (_HID, EisaId ("INT3400"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (DPTF, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (TMPP, Package (0x07)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }
            })
            Name (PTRP, Zero)
            Name (PSEM, Zero)
            Name (ATRP, Zero)
            Name (ASEM, Zero)
            Name (YTRP, Zero)
            Name (YSEM, Zero)
            Method (IDSP, 0, Serialized)
            {
                Name (TMPI, Zero)
                If (LAnd (LEqual (DPPP, One), CondRefOf (DPSP)))
                {
                    Store (DerefOf (Index (DPSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (LAnd (LEqual (DPAP, One), CondRefOf (DASP)))
                {
                    Store (DerefOf (Index (DASP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (LAnd (LEqual (DPCP, One), CondRefOf (DCSP)))
                {
                    Store (DerefOf (Index (DCSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (LAnd (LEqual (DCMP, One), CondRefOf (DMSP)))
                {
                    Store (DerefOf (Index (DMSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (LAnd (LEqual (LPMP, One), CondRefOf (LPSP)))
                {
                    Store (DerefOf (Index (LPSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                If (LAnd (LEqual (CTDP, One), CondRefOf (CTSP)))
                {
                    Store (DerefOf (Index (CTSP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                Return (TMPP)
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (NUMP, Zero)
                Name (UID2, Buffer (0x10)
                {
                    /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                    /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF 
                })
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                IDSP ()
                Store (SizeOf (TMPP), NUMP)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                CreateDWordField (UID2, Zero, EID0)
                CreateDWordField (UID2, 0x04, EID1)
                CreateDWordField (UID2, 0x08, EID2)
                CreateDWordField (UID2, 0x0C, EID3)
                While (NUMP)
                {
                    Store (DerefOf (Index (TMPP, Subtract (NUMP, One))), UID2)
                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        Break
                    }

                    Decrement (NUMP)
                }

                If (LEqual (NUMP, Zero))
                {
                    And (STS1, 0xFFFFFF00, STS1)
                    Or (STS1, 0x06, STS1)
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, One))
                {
                    And (STS1, 0xFFFFFF00, STS1)
                    Or (STS1, 0x0A, STS1)
                    Return (Arg3)
                }

                If (LNotEqual (Arg2, 0x02))
                {
                    And (STS1, 0xFFFFFF00, STS1)
                    Or (STS1, 0x02, STS1)
                    Return (Arg3)
                }

                If (LAnd (LEqual (DPPP, One), CondRefOf (\_PR.APSV)))
                {
                    If (LEqual (PSEM, Zero))
                    {
                        Store (One, PSEM)
                        Store (\_PR.APSV, PTRP)
                    }

                    If (CondRefOf (DPSP))
                    {
                        Store (DerefOf (Index (DPSP, Zero)), UID2)
                    }

                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        If (Not (And (STS1, One)))
                        {
                            If (And (CAP1, One))
                            {
                                Store (0x6E, \_PR.APSV)
                            }
                            Else
                            {
                                Store (PTRP, \_PR.APSV)
                            }

                            Notify (\_TZ.THRM, 0x80)
                        }

                        Return (Arg3)
                    }
                }

                If (LAnd (LEqual (DPAP, One), CondRefOf (\_PR.AAC0)))
                {
                    If (LEqual (ASEM, Zero))
                    {
                        Store (One, ASEM)
                        Store (\_PR.AAC0, ATRP)
                    }

                    If (CondRefOf (DASP))
                    {
                        Store (DerefOf (Index (DASP, Zero)), UID2)
                    }

                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        If (Not (And (STS1, One)))
                        {
                            If (And (CAP1, One))
                            {
                                Store (0x6E, \_PR.AAC0)
                            }
                            Else
                            {
                                Store (ATRP, \_PR.AAC0)
                            }

                            Notify (\_TZ.THRM, 0x80)
                        }

                        Return (Arg3)
                    }
                }

                If (LAnd (LEqual (DPCP, One), CondRefOf (\_PR.ACRT)))
                {
                    If (LEqual (YSEM, Zero))
                    {
                        Store (One, YSEM)
                        Store (\_PR.ACRT, YTRP)
                    }

                    If (CondRefOf (DCSP))
                    {
                        Store (DerefOf (Index (DCSP, Zero)), UID2)
                    }

                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (IID2, EID2), LEqual (IID3, EID3))))
                    {
                        If (Not (And (STS1, One)))
                        {
                            If (And (CAP1, One))
                            {
                                Store (0xD2, \_PR.ACRT)
                            }
                            Else
                            {
                                Store (YTRP, \_PR.ACRT)
                            }

                            Notify (\_TZ.THRM, 0x80)
                        }

                        Return (Arg3)
                    }
                }

                Return (Arg3)
            }

            Method (KTOC, 1, NotSerialized)
            {
                Subtract (Arg0, 0x0AAC, Local1)
                If (LGreater (Local1, Zero))
                {
                    Return (Divide (Local1, 0x0A, ))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (CTOK, 1, NotSerialized)
            {
                If (And (Arg0, 0x1000))
                {
                    Return (0x0944)
                }

                Multiply (Arg0, 0x0A, Local0)
                And (Local0, 0x0FFF, Local1)
                Add (Local1, 0x0AAC, Local2)
                Return (Local2)
            }

            Method (PDRT, 0, NotSerialized)
            {
                \_SB.PCI0.B0D4.PCCC ()
                If (\PWRS)
                {
                    PDAC ()
                }
                Else
                {
                    PDDC ()
                }
            }

            Method (PDDC, 0, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (TMPD, Package (0x09)
                {
                    Package (0x04)
                    {
                        0x50, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00010001, 
                            0x80000000
                        }
                    }, 

                    Package (0x04)
                    {
                        0x3C, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00010000, 
                            0x80000000
                        }
                    }, 

                    Package (0x04)
                    {
                        0x32, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00030000, 
                            0x80000000
                        }
                    }, 

                    Package (0x04)
                    {
                        0x32, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00040000, 
                            0x02
                        }
                    }, 

                    Package (0x04)
                    {
                        0x3C, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00010002, 
                            One
                        }
                    }, 

                    Package (0x04)
                    {
                        0x28, 
                        \_SB.PCI0.DPLY, 
                        0x0A, 
                        Package (0x02)
                        {
                            0x00050000, 
                            0x3C
                        }
                    }, 

                    Package (0x04)
                    {
                        0x28, 
                        \_SB.PCI0.TMEM, 
                        0x02, 
                        Package (0x02)
                        {
                            0x00010000, 
                            0x03E8
                        }
                    }, 

                    Package (0x04)
                    {
                        0x1E, 
                        \_SB.PCI0.B0D4, 
                        Zero, 
                        Package (0x02)
                        {
                            0x00020000, 
                            0x50
                        }
                    }, 

                    Package (0x04)
                    {
                        0x14, 
                        \_SB.PCI0.B0D4, 
                        Zero, 
                        Package (0x02)
                        {
                            0x00020001, 
                            0x32
                        }
                    }
                })
                If (CondRefOf (\_PR.CBMI))
                {
                    While (One)
                    {
                        Store (\_PR.CBMI, _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            If (LAnd (LGreaterEqual (\_PR.CLVL, One), LLessEqual (\_PR.CLVL, 0x03)))
                            {
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL20, One), Local0)
                                Store (\_SB.PCI0.B0D4.MIN4 (\_PR.PL10), Local1)
                            }
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            If (LOr (LEqual (\_PR.CLVL, 0x02), LEqual (\_PR.CLVL, 0x03)))
                            {
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL21, One), Local0)
                                Store (\_SB.PCI0.B0D4.MIN4 (\_PR.PL11), Local1)
                            }
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            If (LEqual (\_PR.CLVL, 0x03))
                            {
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL22, One), Local0)
                                Store (\_SB.PCI0.B0D4.MIN4 (\_PR.PL12), Local1)
                            }
                        }

                        Break
                    }
                }

                Store (DerefOf (Index (DerefOf (Index (\_SB.PCI0.B0D4.PCCX, One)), Zero)), Local2)
                Store (Local0, Index (DerefOf (Index (DerefOf (Index (TMPD, Zero)), 0x03)), One))
                Store (Local1, Index (DerefOf (Index (DerefOf (Index (TMPD, One)), 0x03)), One))
                Store (Local2, Index (DerefOf (Index (DerefOf (Index (TMPD, 0x02)), 0x03)), One))
                Return (TMPD)
            }

            Method (PDAC, 0, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (TMPD, Package (0x09)
                {
                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00010001, 
                            0x80000000
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00010000, 
                            0x80000000
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00030000, 
                            0x80000000
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00040000, 
                            0x80000000
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.B0D4, 
                        0x09, 
                        Package (0x02)
                        {
                            0x00010002, 
                            Zero
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.DPLY, 
                        0x0A, 
                        Package (0x02)
                        {
                            0x00050000, 
                            0x64
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.TMEM, 
                        0x02, 
                        Package (0x02)
                        {
                            0x00010000, 
                            0x1388
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.B0D4, 
                        Zero, 
                        Package (0x02)
                        {
                            0x00020000, 
                            0x64
                        }
                    }, 

                    Package (0x04)
                    {
                        0x64, 
                        \_SB.PCI0.B0D4, 
                        Zero, 
                        Package (0x02)
                        {
                            0x00020001, 
                            0x64
                        }
                    }
                })
                If (CondRefOf (\_PR.CBMI))
                {
                    While (One)
                    {
                        Store (\_PR.CBMI, _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            If (LAnd (LGreaterEqual (\_PR.CLVL, One), LLessEqual (\_PR.CLVL, 0x03)))
                            {
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL20, One), Local0)
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL10, One), Local1)
                            }
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            If (LOr (LEqual (\_PR.CLVL, 0x02), LEqual (\_PR.CLVL, 0x03)))
                            {
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL21, One), Local0)
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL11, One), Local1)
                            }
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            If (LEqual (\_PR.CLVL, 0x03))
                            {
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL22, One), Local0)
                                Store (\_SB.PCI0.B0D4.CPNU (\_PR.PL12, One), Local1)
                            }
                        }

                        Break
                    }
                }

                Store (DerefOf (Index (DerefOf (Index (\_SB.PCI0.B0D4.PCCX, One)), One)), Local2)
                Store (Local0, Index (DerefOf (Index (DerefOf (Index (TMPD, Zero)), 0x03)), One))
                Store (Local1, Index (DerefOf (Index (DerefOf (Index (TMPD, One)), 0x03)), One))
                Store (Local2, Index (DerefOf (Index (DerefOf (Index (TMPD, 0x02)), 0x03)), One))
                Store (TCNT, Index (DerefOf (Index (DerefOf (Index (TMPD, 0x03)), 0x03)), One))
                Return (TMPD)
            }
        }
    }

    Scope (\_SB.PCI0.B0D4)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (SADE, One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (MHBR, 0x0F), 0x5000), 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x998), 
            RP0C,   8, 
            RP1C,   8, 
            RPNC,   8, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            MNTR,   8
        }

        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            Name (_T_6, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LAnd (LEqual (XPCC, Zero), CondRefOf (\_PR.CBMI)))
            {
                Store (\_SB.PCI0.LPCB.EC0.RRAM (0x01BF), Local0)
                While (One)
                {
                    Store (Local0, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Zero, \_PR.CBMI)
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        While (One)
                        {
                            Store (\_PR.CLVL, _T_1)
                            If (LEqual (_T_1, 0x03))
                            {
                                Store (One, \_PR.CBMI)
                            }
                            ElseIf (LEqual (_T_1, 0x02))
                            {
                                Store (Zero, \_PR.CBMI)
                            }
                            ElseIf (LEqual (_T_1, One))
                            {
                                Store (Zero, \_PR.CBMI)
                            }

                            Break
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        While (One)
                        {
                            Store (\_PR.CLVL, _T_2)
                            If (LEqual (_T_2, 0x03))
                            {
                                Store (0x02, \_PR.CBMI)
                            }
                            ElseIf (LEqual (_T_2, 0x02))
                            {
                                Store (One, \_PR.CBMI)
                            }
                            ElseIf (LEqual (_T_2, One))
                            {
                                Store (Zero, \_PR.CBMI)
                            }

                            Break
                        }
                    }

                    Break
                }

                While (One)
                {
                    Store (\_PR.CBMI, _T_3)
                    If (LEqual (_T_3, Zero))
                    {
                        If (LAnd (LGreaterEqual (\_PR.CLVL, One), LLessEqual (\_PR.CLVL, 0x03)))
                        {
                            CPL0 ()
                            Store (One, XPCC)
                        }
                    }
                    ElseIf (LEqual (_T_3, One))
                    {
                        If (LOr (LEqual (\_PR.CLVL, 0x02), LEqual (\_PR.CLVL, 0x03)))
                        {
                            CPL1 ()
                            Store (One, XPCC)
                        }
                    }
                    ElseIf (LEqual (_T_3, 0x02))
                    {
                        If (LEqual (\_PR.CLVL, 0x03))
                        {
                            CPL2 ()
                            Store (One, XPCC)
                        }
                    }

                    Break
                }

                While (One)
                {
                    Store (Local0, _T_4)
                    If (LEqual (_T_4, Zero))
                    {
                        Store (Zero, \_SB.PCI0.B0D4.MAXT)
                        Notify (\_SB.PCI0.B0D4, 0x84)
                    }
                    ElseIf (LEqual (_T_4, One))
                    {
                        While (One)
                        {
                            Store (\_PR.CLVL, _T_5)
                            If (LEqual (_T_5, 0x03))
                            {
                                Store (One, \_SB.PCI0.B0D4.MAXT)
                            }
                            ElseIf (LEqual (_T_5, 0x02))
                            {
                                Store (Zero, \_SB.PCI0.B0D4.MAXT)
                            }
                            ElseIf (LEqual (_T_5, One))
                            {
                                Store (Zero, \_SB.PCI0.B0D4.MAXT)
                            }

                            Break
                        }

                        Notify (\_SB.PCI0.B0D4, 0x84)
                    }
                    ElseIf (LEqual (_T_4, 0x02))
                    {
                        While (One)
                        {
                            Store (\_PR.CLVL, _T_6)
                            If (LEqual (_T_6, 0x03))
                            {
                                Store (0x02, \_SB.PCI0.B0D4.MAXT)
                            }
                            ElseIf (LEqual (_T_6, 0x02))
                            {
                                Store (One, \_SB.PCI0.B0D4.MAXT)
                            }
                            ElseIf (LEqual (_T_6, One))
                            {
                                Store (Zero, \_SB.PCI0.B0D4.MAXT)
                            }

                            Break
                        }

                        Notify (\_SB.PCI0.B0D4, 0x84)
                    }

                    Break
                }
            }

            Return (NPCC)
        }

        Name (NPCC, Package (0x03)
        {
            0x02, 
            Package (0x06)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x1C, 
                0x20, 
                0x03E8
            }, 

            Package (0x06)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero, 
                0x03E8
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If (LEqual (PWRU, Zero))
            {
                Store (One, PPUU)
            }
            Else
            {
                ShiftLeft (Decrement (PWRU), 0x02, PPUU)
            }

            Divide (Arg0, PPUU, RMDR, CNVT)
            If (LEqual (Arg1, Zero))
            {
                Return (CNVT)
            }
            Else
            {
                Multiply (CNVT, 0x03E8, CNVT)
                Multiply (RMDR, 0x03E8, RMDR)
                Divide (RMDR, PPUU, Local0, RMDR)
                Add (CNVT, RMDR, CNVT)
                Return (CNVT)
            }
        }

        Method (MIN4, 1, Serialized)
        {
            Name (RMDR, Zero)
            Name (DIVD, Zero)
            Store (CPNU (Arg0, Zero), DIVD)
            Subtract (DIVD, One, DIVD)
            If (LOr (LLess (DIVD, 0x04), LEqual (DIVD, Zero)))
            {
                Return (One)
            }
            Else
            {
                Divide (DIVD, 0x04, RMDR)
            }

            While (LNotEqual (RMDR, Zero))
            {
                Subtract (DIVD, One, DIVD)
                If (LNotEqual (DIVD, Zero))
                {
                    Divide (DIVD, 0x04, RMDR)
                }
            }

            Return (Multiply (DIVD, 0x03E8))
        }

        Method (MAX4, 1, Serialized)
        {
            Name (RMDR, Zero)
            Name (DIVD, Zero)
            Store (CPNU (Arg0, Zero), DIVD)
            Add (DIVD, One, DIVD)
            Divide (DIVD, 0x04, RMDR)
            While (LNotEqual (RMDR, Zero))
            {
                Add (DIVD, One, DIVD)
                Divide (DIVD, 0x04, RMDR)
            }

            Return (Multiply (DIVD, 0x03E8))
        }

        Method (CPL0, 0, NotSerialized)
        {
            Store (0x02, Index (\_SB.PCI0.B0D4.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), Zero))
            Store (MIN4 (\_PR.PL10), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), One))
            Store (CPNU (\_PR.PL10, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x02))
            Store (\_PR.PLW0, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x03))
            Add (\_PR.PLW0, 0x04, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x05))
            Store (One, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), Zero))
            Store (CPNU (\_PR.PL20, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), One))
            Store (CPNU (\_PR.PL20, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x05))
        }

        Method (CPL1, 0, NotSerialized)
        {
            Store (0x02, Index (\_SB.PCI0.B0D4.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), Zero))
            Store (MIN4 (\_PR.PL11), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), One))
            Store (CPNU (\_PR.PL11, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x02))
            Store (\_PR.PLW1, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x03))
            Add (\_PR.PLW1, 0x04, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x05))
            Store (One, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), Zero))
            Store (CPNU (\_PR.PL21, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), One))
            Store (CPNU (\_PR.PL21, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x05))
        }

        Method (CPL2, 0, NotSerialized)
        {
            Store (0x02, Index (\_SB.PCI0.B0D4.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), Zero))
            Store (MIN4 (\_PR.PL12), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), One))
            Store (CPNU (\_PR.PL12, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x02))
            Store (\_PR.PLW2, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x03))
            Add (\_PR.PLW2, 0x04, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, One)), 0x05))
            Store (One, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), Zero))
            Store (CPNU (\_PR.PL22, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), One))
            Store (CPNU (\_PR.PL22, One), Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PCI0.B0D4.NPCC, 0x02)), 0x05))
        }

        Name (LSTM, Zero)
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (SPPC, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (Arg0, \_PR.CPU0._PPC)
            While (One)
            {
                Store (TCNT, _T_0)
                If (LEqual (_T_0, 0x08))
                {
                    Notify (\_PR.CPU0, 0x80)
                    Notify (\_PR.CPU1, 0x80)
                    Notify (\_PR.CPU2, 0x80)
                    Notify (\_PR.CPU3, 0x80)
                    Notify (\_PR.CPU4, 0x80)
                    Notify (\_PR.CPU5, 0x80)
                    Notify (\_PR.CPU6, 0x80)
                    Notify (\_PR.CPU7, 0x80)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    Notify (\_PR.CPU0, 0x80)
                    Notify (\_PR.CPU1, 0x80)
                    Notify (\_PR.CPU2, 0x80)
                    Notify (\_PR.CPU3, 0x80)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Notify (\_PR.CPU0, 0x80)
                    Notify (\_PR.CPU1, 0x80)
                }
                Else
                {
                    Notify (\_PR.CPU0, 0x80)
                }

                Break
            }
        }

        Name (TLPO, Package (0x06)
        {
            One, 
            One, 
            Zero, 
            One, 
            One, 
            0x02
        })
        Method (CLPO, 0, NotSerialized)
        {
            Store (LPOE, Index (TLPO, One))
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                Store (SizeOf (\_PR.CPU0._PSS), Local1)
            }
            Else
            {
                Store (Zero, Local1)
            }

            If (LLess (LPOP, Local1))
            {
                Store (LPOP, Index (TLPO, 0x02))
            }
            Else
            {
                Decrement (Local1)
                Store (Local1, Index (TLPO, 0x02))
            }

            Store (LPOS, Index (TLPO, 0x03))
            Store (LPOW, Index (TLPO, 0x04))
            Store (LPER, Index (TLPO, 0x05))
            Return (TLPO)
        }

        Name (AEXL, Package (0x04)
        {
            "svchost.exe", 
            "dllhost.exe", 
            "smss.exe", 
            "WinSAT.exe"
        })
        Method (PCCC, 0, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (One, Index (PCCX, Zero))
            While (One)
            {
                Store (CPNU (PTDP, Zero), _T_0)
                If (LEqual (_T_0, 0x39))
                {
                    Store (0xA7F8, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x00017318, Index (DerefOf (Index (PCCX, One)), One))
                }
                ElseIf (LEqual (_T_0, 0x2F))
                {
                    Store (0x9858, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x00014C08, Index (DerefOf (Index (PCCX, One)), One))
                }
                ElseIf (LEqual (_T_0, 0x25))
                {
                    Store (0x7148, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0xD6D8, Index (DerefOf (Index (PCCX, One)), One))
                }
                ElseIf (LEqual (_T_0, 0x19))
                {
                    Store (0x3E80, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x7D00, Index (DerefOf (Index (PCCX, One)), One))
                }
                ElseIf (LEqual (_T_0, 0x0F))
                {
                    Store (0x36B0, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x7D00, Index (DerefOf (Index (PCCX, One)), One))
                }
                ElseIf (LEqual (_T_0, 0x0B))
                {
                    Store (0x36B0, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x61A8, Index (DerefOf (Index (PCCX, One)), One))
                }
                Else
                {
                    Store (0xFF, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0xFF, Index (DerefOf (Index (PCCX, One)), One))
                }

                Break
            }

            Return (PCCX)
        }

        Name (PCCX, Package (0x02)
        {
            0x80000000, 
            Package (0x02)
            {
                0x80000000, 
                0x80000000
            }
        })
        Name (KEFF, Package (0x1E)
        {
            Package (0x02)
            {
                0x01BC, 
                Zero
            }, 

            Package (0x02)
            {
                0x01CF, 
                0x27
            }, 

            Package (0x02)
            {
                0x01E1, 
                0x4B
            }, 

            Package (0x02)
            {
                0x01F3, 
                0x6C
            }, 

            Package (0x02)
            {
                0x0206, 
                0x8B
            }, 

            Package (0x02)
            {
                0x0218, 
                0xA8
            }, 

            Package (0x02)
            {
                0x022A, 
                0xC3
            }, 

            Package (0x02)
            {
                0x023D, 
                0xDD
            }, 

            Package (0x02)
            {
                0x024F, 
                0xF4
            }, 

            Package (0x02)
            {
                0x0261, 
                0x010B
            }, 

            Package (0x02)
            {
                0x0274, 
                0x011F
            }, 

            Package (0x02)
            {
                0x032C, 
                0x01BD
            }, 

            Package (0x02)
            {
                0x03D7, 
                0x0227
            }, 

            Package (0x02)
            {
                0x048B, 
                0x026D
            }, 

            Package (0x02)
            {
                0x053E, 
                0x02A1
            }, 

            Package (0x02)
            {
                0x05F7, 
                0x02C6
            }, 

            Package (0x02)
            {
                0x06A8, 
                0x02E6
            }, 

            Package (0x02)
            {
                0x075D, 
                0x02FF
            }, 

            Package (0x02)
            {
                0x0818, 
                0x0311
            }, 

            Package (0x02)
            {
                0x08CF, 
                0x0322
            }, 

            Package (0x02)
            {
                0x179C, 
                0x0381
            }, 

            Package (0x02)
            {
                0x2DDC, 
                0x039C
            }, 

            Package (0x02)
            {
                0x44A8, 
                0x039E
            }, 

            Package (0x02)
            {
                0x5C35, 
                0x0397
            }, 

            Package (0x02)
            {
                0x747D, 
                0x038D
            }, 

            Package (0x02)
            {
                0x8D7F, 
                0x0382
            }, 

            Package (0x02)
            {
                0xA768, 
                0x0376
            }, 

            Package (0x02)
            {
                0xC23B, 
                0x0369
            }, 

            Package (0x02)
            {
                0xDE26, 
                0x035A
            }, 

            Package (0x02)
            {
                0xFB7C, 
                0x034A
            }
        })
        Name (CEUP, Package (0x06)
        {
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000
        })
        Method (CEUC, 0, NotSerialized)
        {
            Store (One, Index (CEUP, Zero))
            Store (ECEU, Index (CEUP, One))
            Store (TGFG, Index (CEUP, 0x02))
            Store (0x28, Index (CEUP, 0x03))
            Store (0x14, Index (CEUP, 0x04))
            Store (0x14, Index (CEUP, 0x05))
            Return (CEUP)
        }

        Method (TMPX, 0, NotSerialized)
        {
            Return (0x0BB8)
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            Store (Arg0, LSTM)
            Notify (B0D4, 0x91)
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                Return (\_PR.CPU0._PSS)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_PR.CPU0._TSS))
            {
                Return (\_PR.CPU0._TSS)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_PR.CPU0._TPC))
            {
                Return (\_PR.CPU0._TPC)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (LAnd (CondRefOf (\PDC0), LNotEqual (\PDC0, 0x80000000)))
            {
                If (And (\PDC0, 0x04))
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }
                    })
                }
            }
            Else
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_PR.CPU0._TSD))
            {
                Return (\_PR.CPU0._TSD)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            If (LAnd (CondRefOf (\_PR.CPU0._TSS), CondRefOf (\_PR.CFGD)))
            {
                If (And (\_PR.CFGD, 0x2000))
                {
                    Return (Subtract (SizeOf (\_PR.CPU0.TSMF), One))
                }
                Else
                {
                    Return (Subtract (SizeOf (\_PR.CPU0.TSMC), One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                Return (Subtract (SizeOf (\_PR.CPU0._PSS), One))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (CTSP, Package (0x01)
        {
            ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067")
        })
    }

    Scope (\_SB.PCI0.B0D4)
    {
        Method (TDPL, 0, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Name (AAAA, Zero)
            Name (BBBB, Zero)
            Name (CCCC, Zero)
            Name (PPUU, Zero)
            Store (CTNL, Local0)
            If (LOr (LEqual (Local0, One), LEqual (Local0, 0x02)))
            {
                Store (\_PR.CLVL, Local0)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }

            If (LEqual (CLCK, One))
            {
                Store (One, Local0)
            }

            Store (CPNU (\_PR.PL10, One), AAAA)
            Store (CPNU (\_PR.PL11, One), BBBB)
            Store (CPNU (\_PR.PL12, One), CCCC)
            Name (TMP1, Package (0x01)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP2, Package (0x02)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP3, Package (0x03)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            If (LEqual (Local0, 0x03))
            {
                If (LGreaterEqual (AAAA, BBBB))
                {
                    If (LGreater (AAAA, CCCC))
                    {
                        If (LGreater (BBBB, CCCC))
                        {
                            Store (Zero, Local3)
                            Store (Zero, LEV0)
                            Store (One, Local4)
                            Store (One, LEV1)
                            Store (0x02, Local5)
                            Store (0x02, LEV2)
                        }
                        Else
                        {
                            Store (Zero, Local3)
                            Store (Zero, LEV0)
                            Store (One, Local5)
                            Store (0x02, LEV1)
                            Store (0x02, Local4)
                            Store (One, LEV2)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local5)
                        Store (0x02, LEV0)
                        Store (One, Local3)
                        Store (Zero, LEV1)
                        Store (0x02, Local4)
                        Store (One, LEV2)
                    }
                }
                ElseIf (LGreater (BBBB, CCCC))
                {
                    If (LGreater (AAAA, CCCC))
                    {
                        Store (Zero, Local4)
                        Store (One, LEV0)
                        Store (One, Local3)
                        Store (Zero, LEV1)
                        Store (0x02, Local5)
                        Store (0x02, LEV2)
                    }
                    Else
                    {
                        Store (Zero, Local4)
                        Store (One, LEV0)
                        Store (One, Local5)
                        Store (0x02, LEV1)
                        Store (0x02, Local3)
                        Store (Zero, LEV2)
                    }
                }
                Else
                {
                    Store (Zero, Local5)
                    Store (0x02, LEV0)
                    Store (One, Local4)
                    Store (One, LEV1)
                    Store (0x02, Local3)
                    Store (Zero, LEV2)
                }

                Store (Add (\_PR.TAR0, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (AAAA, Index (DerefOf (Index (TMP3, Local3)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP3, Local3)), One))
                Store (\_PR.CTC0, Index (DerefOf (Index (TMP3, Local3)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP3, Local3)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP3, Local3)), 0x04))
                Store (Add (\_PR.TAR1, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (BBBB, Index (DerefOf (Index (TMP3, Local4)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP3, Local4)), One))
                Store (\_PR.CTC1, Index (DerefOf (Index (TMP3, Local4)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP3, Local4)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP3, Local4)), 0x04))
                Store (Add (\_PR.TAR2, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (CCCC, Index (DerefOf (Index (TMP3, Local5)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP3, Local5)), One))
                Store (\_PR.CTC2, Index (DerefOf (Index (TMP3, Local5)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP3, Local5)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP3, Local5)), 0x04))
                Return (TMP3)
            }

            If (LEqual (Local0, 0x02))
            {
                If (LGreaterEqual (AAAA, BBBB))
                {
                    Store (Zero, Local3)
                    Store (One, Local4)
                    Store (Zero, LEV0)
                    Store (One, LEV1)
                    Store (Zero, LEV2)
                }
                Else
                {
                    Store (Zero, Local4)
                    Store (One, Local3)
                    Store (One, LEV0)
                    Store (Zero, LEV1)
                    Store (Zero, LEV2)
                }

                Store (Add (\_PR.TAR0, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (AAAA, Index (DerefOf (Index (TMP2, Local3)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP2, Local3)), One))
                Store (\_PR.CTC0, Index (DerefOf (Index (TMP2, Local3)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP2, Local3)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP2, Local3)), 0x04))
                Store (Add (\_PR.TAR1, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (BBBB, Index (DerefOf (Index (TMP2, Local4)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP2, Local4)), One))
                Store (\_PR.CTC1, Index (DerefOf (Index (TMP2, Local4)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP2, Local4)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP2, Local4)), 0x04))
                Return (TMP2)
            }

            If (LEqual (Local0, One))
            {
                While (One)
                {
                    Store (\_PR.CBMI, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Add (\_PR.TAR0, One), Local1)
                        Multiply (Local1, 0x64, Local2)
                        Store (AAAA, Index (DerefOf (Index (TMP1, Zero)), Zero))
                        Store (Local2, Index (DerefOf (Index (TMP1, Zero)), One))
                        Store (\_PR.CTC0, Index (DerefOf (Index (TMP1, Zero)), 0x02))
                        Store (Local1, Index (DerefOf (Index (TMP1, Zero)), 0x03))
                        Store (Zero, Index (DerefOf (Index (TMP1, Zero)), 0x04))
                        Store (Zero, LEV0)
                        Store (Zero, LEV1)
                        Store (Zero, LEV2)
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Store (Add (\_PR.TAR1, One), Local1)
                        Multiply (Local1, 0x64, Local2)
                        Store (BBBB, Index (DerefOf (Index (TMP1, Zero)), Zero))
                        Store (Local2, Index (DerefOf (Index (TMP1, Zero)), One))
                        Store (\_PR.CTC1, Index (DerefOf (Index (TMP1, Zero)), 0x02))
                        Store (Local1, Index (DerefOf (Index (TMP1, Zero)), 0x03))
                        Store (Zero, Index (DerefOf (Index (TMP1, Zero)), 0x04))
                        Store (One, LEV0)
                        Store (One, LEV1)
                        Store (One, LEV2)
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Store (Add (\_PR.TAR2, One), Local1)
                        Multiply (Local1, 0x64, Local2)
                        Store (CCCC, Index (DerefOf (Index (TMP1, Zero)), Zero))
                        Store (Local2, Index (DerefOf (Index (TMP1, Zero)), One))
                        Store (\_PR.CTC2, Index (DerefOf (Index (TMP1, Zero)), 0x02))
                        Store (Local1, Index (DerefOf (Index (TMP1, Zero)), 0x03))
                        Store (Zero, Index (DerefOf (Index (TMP1, Zero)), 0x04))
                        Store (0x02, LEV0)
                        Store (0x02, LEV1)
                        Store (0x02, LEV2)
                    }

                    Break
                }

                Return (TMP1)
            }

            Return (Zero)
        }

        Name (MAXT, Zero)
        Method (TDPC, 0, NotSerialized)
        {
            Return (MAXT)
        }

        Name (LEV0, Zero)
        Name (LEV1, Zero)
        Name (LEV2, Zero)
        Method (STDP, 1, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LGreaterEqual (Arg0, \_PR.CLVL))
            {
                Return (Zero)
            }

            While (One)
            {
                Store (Arg0, _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (LEV0, Local0)
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Store (LEV1, Local0)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store (LEV2, Local0)
                }

                Break
            }

            While (One)
            {
                Store (Local0, _T_1)
                If (LEqual (_T_1, Zero))
                {
                    CPL0 ()
                }
                ElseIf (LEqual (_T_1, One))
                {
                    CPL1 ()
                }
                ElseIf (LEqual (_T_1, 0x02))
                {
                    CPL2 ()
                }

                Break
            }

            Notify (\_SB.PCI0.B0D4, 0x83)
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query
        {
            Increment (\_SB.PCI0.B0D4.MAXT)
            If (LGreaterEqual (\_SB.PCI0.B0D4.MAXT, 0x03))
            {
                Store (Zero, \_SB.PCI0.B0D4.MAXT)
            }

            Notify (\_SB.PCI0.B0D4, 0x84)
        }

        Method (_QB7, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (Zero, \_SB.PCI0.B0D4.MAXT)
            Notify (\_SB.PCI0.B0D4, 0x84)
        }

        Method (_QB8, 0, Serialized)  // _Qxx: EC Query
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            While (One)
            {
                Store (\_PR.CLVL, _T_0)
                If (LEqual (_T_0, 0x03))
                {
                    Store (One, \_SB.PCI0.B0D4.MAXT)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store (Zero, \_SB.PCI0.B0D4.MAXT)
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Store (Zero, \_SB.PCI0.B0D4.MAXT)
                }

                Break
            }

            Notify (\_SB.PCI0.B0D4, 0x84)
        }

        Method (_QB9, 0, Serialized)  // _Qxx: EC Query
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            While (One)
            {
                Store (\_PR.CLVL, _T_0)
                If (LEqual (_T_0, 0x03))
                {
                    Store (0x02, \_SB.PCI0.B0D4.MAXT)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store (One, \_SB.PCI0.B0D4.MAXT)
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Store (Zero, \_SB.PCI0.B0D4.MAXT)
                }

                Break
            }

            Notify (\_SB.PCI0.B0D4, 0x84)
        }
    }

    Scope (\_SB.IETM)
    {
        Name (LPSP, Package (0x01)
        {
            ToUUID ("b9455b06-7949-40c6-abf2-363a70c8706c")
        })
        Method (CLPM, 0, NotSerialized)
        {
            If (LEqual (\_SB.PCI0.B0D4.LPMS, Zero))
            {
                Return (Zero)
            }

            Return (LPMV)
        }
    }

    Scope (\_SB)
    {
        Device (TCPU)
        {
            Name (_HID, EisaId ("INT3401"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CINT, One)
            Name (LSTM, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (SADE, 0x02))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PGMB, 0, NotSerialized)
            {
                Return (\_SB.PCI0.MHBR)
            }

            Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
            Method (SPPC, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (Arg0, \_PR.CPU0._PPC)
                While (One)
                {
                    Store (TCNT, _T_0)
                    If (LEqual (_T_0, 0x08))
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                        Notify (\_PR.CPU4, 0x80)
                        Notify (\_PR.CPU5, 0x80)
                        Notify (\_PR.CPU6, 0x80)
                        Notify (\_PR.CPU7, 0x80)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                    }
                    Else
                    {
                        Notify (\_PR.CPU0, 0x80)
                    }

                    Break
                }
            }

            Method (TMPX, 0, NotSerialized)
            {
                Return (0x0BB8)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM)
                Notify (TCPU, 0x91)
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {
                If (CondRefOf (\_PR.CPU0._PSS))
                {
                    Return (\_PR.CPU0._PSS)
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
            {
                If (CondRefOf (\_PR.CPU0._TSS))
                {
                    Return (\_PR.CPU0._TSS)
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
            {
                If (CondRefOf (\_PR.CPU0._TPC))
                {
                    Return (\_PR.CPU0._TPC)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
            {
                If (CondRefOf (\_PR.CPU0._PTC))
                {
                    Return (\_PR.CPU0._PTC)
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
            {
                If (CondRefOf (\_PR.CPU0._TSD))
                {
                    Return (\_PR.CPU0._TSD)
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
            {
                If (CondRefOf (\_PR.CPU0._TSS))
                {
                    Name (LFMI, Zero)
                    Store (SizeOf (\_PR.CPU0._TSS), LFMI)
                    Decrement (LFMI)
                    Return (LFMI)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
            {
                If (CondRefOf (\_PR.CPU0._PSS))
                {
                    Name (LFMI, Zero)
                    Store (SizeOf (\_PR.CPU0._PSS), LFMI)
                    Decrement (LFMI)
                    Return (LFMI)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (TPCH)
        {
            Name (_ADR, 0x001F0006)  // _ADR: Address
            Name (LSTM, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PCHD, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            OperationRegion (PCHT, PCI_Config, 0x10, 0x08)
            Field (PCHT, DWordAcc, NoLock, Preserve)
            {
                STYP,   1, 
                ADRG,   2, 
                PREF,   1, 
                    ,   8, 
                TBAR,   52
            }

            Name (GTSH, 0x1E)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM)
                Notify (TPCH, 0x91)
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (TMEM)
        {
            Name (_HID, EisaId ("INT3402"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (SAUX, 0x10)
            Name (LSTM, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (MEMD, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PPCC, 0, Serialized)
            {
                Return (NPCC)
            }

            Name (NPCC, Package (0x03)
            {
                0x02, 
                Package (0x06)
                {
                    Zero, 
                    0x03E8, 
                    0x1388, 
                    One, 
                    0x1C, 
                    0x03E8
                }, 

                Package (0x06)
                {
                    One, 
                    0x03E8, 
                    0x2710, 
                    Zero, 
                    Zero, 
                    0x03E8
                }
            })
            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\TSOD)
                {
                    If (LGreater (\_SB.PCI0.LPCB.EC0.TH1R, \_SB.PCI0.LPCB.EC0.TH1L))
                    {
                        Store (\_SB.PCI0.LPCB.EC0.TH1R, Local1)
                    }
                    Else
                    {
                        Store (\_SB.PCI0.LPCB.EC0.TH1L, Local1)
                    }
                }
                ElseIf (LGreater (\_SB.PCI0.LPCB.EC0.TH1R, \_SB.PCI0.LPCB.EC0.TH1L))
                {
                    Store (\_SB.PCI0.LPCB.EC0.TH1R, Local1)
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.TH1L, Local1)
                }

                Return (\_SB.IETM.CTOK (Local1))
            }

            Name (PATC, 0x02)
            Name (AT0, Ones)
            Method (PAT0, 1, NotSerialized)
            {
            }

            Name (AT1, Ones)
            Method (PAT1, 1, NotSerialized)
            {
            }

            Name (GTSH, 0x14)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM)
                Notify (TMEM, 0x91)
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (PGMB, 0, NotSerialized)
            {
                Return (\_SB.PCI0.MHBR)
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (DPLY)
        {
            Name (_HID, EisaId ("INT3406"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (BDLI, 0x20)
            Name (BDHI, 0x52)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (DISE, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (DDDL, 0, NotSerialized)
            {
                Return (BDLI)
            }

            Method (DDPC, 0, NotSerialized)
            {
                Return (BDHI)
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                If (CondRefOf (\_SB.PCI0.GFX0.LCDD._BCL))
                {
                    Return (\_SB.PCI0.GFX0.LCDD._BCL ())
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (CondRefOf (\_SB.PCI0.GFX0.LCDD._BCM))
                {
                    \_SB.PCI0.GFX0.LCDD._BCM (Arg0)
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                If (CondRefOf (\_SB.PCI0.GFX0.LCDD._BQC))
                {
                    Return (\_SB.PCI0.GFX0.LCDD._BQC ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (CondRefOf (\_SB.PCI0.GFX0.LCDD._DCS))
                {
                    Return (\_SB.PCI0.GFX0.LCDD._DCS ())
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (DPSP, Package (0x01)
        {
            ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3")
        })
        Name (DASP, Package (0x01)
        {
            ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae")
        })
        Name (DCSP, Package (0x01)
        {
            ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a")
        })
        Name (DMSP, Package (0x01)
        {
            ToUUID ("16caf1b7-dd38-40ed-b1c1-1b8a1913d531")
        })
    }
}

