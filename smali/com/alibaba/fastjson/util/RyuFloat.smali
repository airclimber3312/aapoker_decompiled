.class public final Lcom/alibaba/fastjson/util/RyuFloat;
.super Ljava/lang/Object;
.source "RyuFloat.java"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x2f

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 21
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v12, 0xa

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v13, 0xb

    aput-object v2, v0, v13

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v14, 0xc

    aput-object v2, v0, v14

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v15, 0xd

    aput-object v2, v0, v15

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v16, 0xe

    aput-object v2, v0, v16

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v17, 0xf

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v18, 0x10

    aput-object v2, v0, v18

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v19, 0x11

    aput-object v2, v0, v19

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v20, 0x12

    aput-object v2, v0, v20

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v21, 0x13

    aput-object v2, v0, v21

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v22, 0x14

    aput-object v2, v0, v22

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v23, 0x15

    aput-object v2, v0, v23

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v24, 0x16

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v24, 0x17

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v24, 0x18

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v24, 0x19

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v24, 0x1a

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v24, 0x1b

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v24, 0x1c

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v24, 0x1d

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v24, 0x1e

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_1f

    const/16 v24, 0x1f

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_20

    const/16 v24, 0x20

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_21

    const/16 v24, 0x21

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_22

    const/16 v24, 0x22

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_23

    const/16 v24, 0x23

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_24

    const/16 v24, 0x24

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_25

    const/16 v24, 0x25

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_26

    const/16 v24, 0x26

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_27

    const/16 v24, 0x27

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_28

    const/16 v24, 0x28

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_29

    const/16 v24, 0x29

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_2a

    const/16 v24, 0x2a

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_2b

    const/16 v24, 0x2b

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    const/16 v24, 0x2c

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_2d

    const/16 v24, 0x2d

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_2e

    const/16 v24, 0x2e

    aput-object v2, v0, v24

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    const/16 v0, 0x1f

    new-array v0, v0, [[I

    new-array v2, v1, [I

    .line 71
    fill-array-data v2, :array_2f

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v11

    new-array v2, v1, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v13

    new-array v2, v1, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v14

    new-array v2, v1, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v15

    new-array v2, v1, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v16

    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v18

    new-array v2, v1, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v19

    new-array v2, v1, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v20

    new-array v2, v1, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v21

    new-array v2, v1, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v22

    new-array v2, v1, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v23

    new-array v2, v1, [I

    fill-array-data v2, :array_45

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_46

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_47

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_48

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_49

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4b

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4c

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_4d

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x28000000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x32000000
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3e800000    # 0.25f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x27100000
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x30d40000
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3d090000
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x2625a000
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x2faf0800
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3b9aca00
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2540be40
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2e90edd0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3a352944
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x246139ca
        0x40000000    # 2.0f
    .end array-data

    :array_e
    .array-data 4
        0x2d79883d
        0x10000000
    .end array-data

    :array_f
    .array-data 4
        0x38d7ea4c
        0x34000000
    .end array-data

    :array_10
    .array-data 4
        0x2386f26f
        0x60800000
    .end array-data

    :array_11
    .array-data 4
        0x2c68af0b
        0x58a00000
    .end array-data

    :array_12
    .array-data 4
        0x3782dace
        0x4ec80000    # 1.6777216E9f
    .end array-data

    :array_13
    .array-data 4
        0x22b1c8c1
        0x113d0000
    .end array-data

    :array_14
    .array-data 4
        0x2b5e3af1
        0x358c4000
    .end array-data

    :array_15
    .array-data 4
        0x3635c9ad
        0x62ef5000
    .end array-data

    :array_16
    .array-data 4
        0x21e19e0c
        0x4dd59200    # 4.478894E8f
    .end array-data

    :array_17
    .array-data 4
        0x2a5a058f
        0x614af680    # 2.3400028E20f
    .end array-data

    :array_18
    .array-data 4
        0x34f086f3
        0x599db420
    .end array-data

    :array_19
    .array-data 4
        0x21165458
        0x28029094    # 7.2478E-15f
    .end array-data

    :array_1a
    .array-data 4
        0x295be96e
        0x320334b9
    .end array-data

    :array_1b
    .array-data 4
        0x33b2e3c9
        0x7e8401e7
    .end array-data

    :array_1c
    .array-data 4
        0x204fce5e
        0x1f128130
    .end array-data

    :array_1d
    .array-data 4
        0x2863c1f5
        0x66d7217c
    .end array-data

    :array_1e
    .array-data 4
        0x327cb273
        0x208ce9db
    .end array-data

    :array_1f
    .array-data 4
        0x3f1bdf10
        0x8b02452
    .end array-data

    :array_20
    .array-data 4
        0x27716b6a
        0x56e16b3
    .end array-data

    :array_21
    .array-data 4
        0x314dc644
        0x46c99c60    # 25806.188f
    .end array-data

    :array_22
    .array-data 4
        0x3da137d5
        0x587c0378
    .end array-data

    :array_23
    .array-data 4
        0x2684c2e5
        0x474d822b
    .end array-data

    :array_24
    .array-data 4
        0x3025f39e
        0x7920e2b6
    .end array-data

    :array_25
    .array-data 4
        0x3c2f7086
        0x57691b64
    .end array-data

    :array_26
    .array-data 4
        0x259da654
        0x16a1b11e
    .end array-data

    :array_27
    .array-data 4
        0x2f050fe9
        0x1c4a1d66
    .end array-data

    :array_28
    .array-data 4
        0x3ac653e3
        0x435ca4bf
    .end array-data

    :array_29
    .array-data 4
        0x24bbf46e
        0x1a19e6f7
    .end array-data

    :array_2a
    .array-data 4
        0x2deaf189
        0x60a060b5
    .end array-data

    :array_2b
    .array-data 4
        0x3965adec
        0x18c878e3
    .end array-data

    :array_2c
    .array-data 4
        0x23df8cb3
        0x4f7d4b8d
    .end array-data

    :array_2d
    .array-data 4
        0x2cd76fe0
        0x435c9e71
    .end array-data

    :array_2e
    .array-data 4
        0x380d4bd8
        0x5433c60d
    .end array-data

    :array_2f
    .array-data 4
        0x10000000
        0x1
    .end array-data

    :array_30
    .array-data 4
        0xccccccc
        0x66666667
    .end array-data

    :array_31
    .array-data 4
        0xa3d70a3
        0x6b851eb9
    .end array-data

    :array_32
    .array-data 4
        0x83126e9
        0x3c6a7efa
    .end array-data

    :array_33
    .array-data 4
        0xd1b7175
        0x4710cb2a
    .end array-data

    :array_34
    .array-data 4
        0xa7c5ac4
        0x38da3c22
    .end array-data

    :array_35
    .array-data 4
        0x8637bd0
        0x2d7b634e
    .end array-data

    :array_36
    .array-data 4
        0xd6bf94d
        0x2f2bd216
    .end array-data

    :array_37
    .array-data 4
        0xabcc771
        0xc230e78
    .end array-data

    :array_38
    .array-data 4
        0x89705f4
        0x9b5a52d
    .end array-data

    :array_39
    .array-data 4
        0xdbe6fec
        0x75ef6eae
    .end array-data

    :array_3a
    .array-data 4
        0xafebff0
        0x5e592558
    .end array-data

    :array_3b
    .array-data 4
        0x8cbccc0
        0x4b7a8447    # 1.6417863E7f
    .end array-data

    :array_3c
    .array-data 4
        0xe12e134
        0x125da071
    .end array-data

    :array_3d
    .array-data 4
        0xb424dc3
        0x284ae6c1
    .end array-data

    :array_3e
    .array-data 4
        0x901d7cf
        0x39d58567
    .end array-data

    :array_3f
    .array-data 4
        0xe69594b
        0x76226f0b
    .end array-data

    :array_40
    .array-data 4
        0xb877aa3
        0x11b525a3
    .end array-data

    :array_41
    .array-data 4
        0x9392ee8
        0x7490eae9
    .end array-data

    :array_42
    .array-data 4
        0xec1e4a7
        0x6db4ab0e
    .end array-data

    :array_43
    .array-data 4
        0xbce5086
        0x249088d8
    .end array-data

    :array_44
    .array-data 4
        0x971da05
        0x3a6d3e0
    .end array-data

    :array_45
    .array-data 4
        0xf1c9008
        0x5d7b966
    .end array-data

    :array_46
    .array-data 4
        0xc16d9a0
        0x4ac9452
    .end array-data

    :array_47
    .array-data 4
        0x9abe14c
        0x6a23a9db
    .end array-data

    :array_48
    .array-data 4
        0xf79687a
        0x769f762b
    .end array-data

    :array_49
    .array-data 4
        0xc612062
        0x2bb2c4ef
    .end array-data

    :array_4a
    .array-data 4
        0x9e74d1b
        0x3c8f03f3
    .end array-data

    :array_4b
    .array-data 4
        0xfd87b5f
        0x14180651
    .end array-data

    :array_4c
    .array-data 4
        0xcad2f7f
        0x29acd1da
    .end array-data

    :array_4d
    .array-data 4
        0xa2425ff
        0x3af0a7e2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(F[CI)I
    .locals 31

    .line 123
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x4e

    .line 124
    aput-char v1, p1, p2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x61

    .line 125
    aput-char v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    .line 126
    aput-char v1, p1, v2

    :goto_0
    sub-int v0, v0, p2

    return v0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/16 v1, 0x79

    const/16 v2, 0x74

    const/16 v3, 0x66

    const/16 v4, 0x49

    const/16 v5, 0x69

    const/16 v6, 0x6e

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 131
    aput-char v4, p1, p2

    add-int/lit8 v4, v0, 0x1

    .line 132
    aput-char v6, p1, v0

    add-int/lit8 v0, v4, 0x1

    .line 133
    aput-char v3, p1, v4

    add-int/lit8 v3, v0, 0x1

    .line 134
    aput-char v5, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 135
    aput-char v6, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 136
    aput-char v5, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 137
    aput-char v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    .line 138
    aput-char v1, p1, v0

    sub-int v2, v2, p2

    return v2

    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/16 v7, 0x2d

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 143
    aput-char v7, p1, p2

    add-int/lit8 v7, v0, 0x1

    .line 144
    aput-char v4, p1, v0

    add-int/lit8 v0, v7, 0x1

    .line 145
    aput-char v6, p1, v7

    add-int/lit8 v4, v0, 0x1

    .line 146
    aput-char v3, p1, v0

    add-int/lit8 v0, v4, 0x1

    .line 147
    aput-char v5, p1, v4

    add-int/lit8 v3, v0, 0x1

    .line 148
    aput-char v6, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 149
    aput-char v5, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 150
    aput-char v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 151
    aput-char v1, p1, v3

    goto :goto_0

    .line 155
    :cond_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x30

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 157
    aput-char v2, p1, p2

    add-int/lit8 v3, v0, 0x1

    .line 158
    aput-char v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 159
    aput-char v2, p1, v3

    goto :goto_0

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 163
    aput-char v7, p1, p2

    add-int/lit8 v3, v0, 0x1

    .line 164
    aput-char v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 165
    aput-char v1, p1, v3

    add-int/lit8 v1, v0, 0x1

    .line 166
    aput-char v2, p1, v0

    sub-int v1, v1, p2

    return v1

    :cond_4
    shr-int/lit8 v3, v0, 0x17

    and-int/lit16 v3, v3, 0xff

    const v4, 0x7fffff

    and-int/2addr v4, v0

    const/16 v5, 0x17

    if-nez v3, :cond_5

    const/16 v6, -0x95

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v3, -0x7f

    sub-int/2addr v6, v5

    const/high16 v8, 0x800000

    or-int/2addr v4, v8

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v12, v11, 0x2

    int-to-long v13, v4

    const-wide/32 v15, 0x800000

    cmp-long v17, v13, v15

    if-nez v17, :cond_9

    if-gt v3, v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v3, 0x2

    :goto_5
    sub-int v3, v11, v3

    add-int/lit8 v6, v6, -0x2

    const-wide/16 v13, 0x1

    const-wide/32 v15, 0x1624c50

    const-wide/32 v17, 0x989680

    const/16 v19, 0x1f

    if-ltz v6, :cond_16

    int-to-long v4, v6

    const-wide/32 v20, 0x2deefb

    mul-long v4, v4, v20

    .line 201
    div-long v4, v4, v17

    long-to-int v5, v4

    if-nez v5, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    int-to-long v1, v5

    mul-long v1, v1, v15

    add-long v1, v1, v17

    sub-long/2addr v1, v13

    .line 202
    div-long v1, v1, v17

    long-to-int v2, v1

    :goto_6
    add-int/lit8 v2, v2, 0x3b

    sub-int/2addr v2, v9

    neg-int v1, v6

    add-int/2addr v1, v5

    add-int/2addr v2, v1

    .line 204
    sget-object v4, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v6, v4, v5

    aget v7, v6, v8

    int-to-long v13, v7

    .line 205
    aget v6, v6, v9

    int-to-long v6, v6

    int-to-long v8, v11

    mul-long v22, v8, v13

    mul-long v24, v8, v6

    shr-long v24, v24, v19

    add-long v22, v22, v24

    add-int/lit8 v2, v2, -0x1f

    move/from16 v24, v10

    move/from16 v25, v11

    shr-long v10, v22, v2

    long-to-int v11, v10

    move/from16 v22, v11

    int-to-long v10, v12

    mul-long v26, v10, v13

    mul-long v10, v10, v6

    shr-long v10, v10, v19

    add-long v26, v26, v10

    shr-long v10, v26, v2

    long-to-int v11, v10

    move-wide/from16 v26, v8

    int-to-long v8, v3

    mul-long v13, v13, v8

    mul-long v8, v8, v6

    shr-long v6, v8, v19

    add-long/2addr v13, v6

    shr-long v6, v13, v2

    long-to-int v2, v6

    if-eqz v5, :cond_c

    add-int/lit8 v6, v11, -0x1

    const/16 v7, 0xa

    .line 209
    div-int/2addr v6, v7

    div-int/lit8 v7, v2, 0xa

    if-gt v6, v7, :cond_c

    add-int/lit8 v6, v5, -0x1

    if-nez v6, :cond_b

    const/4 v8, 0x1

    goto :goto_7

    :cond_b
    int-to-long v7, v6

    mul-long v7, v7, v15

    add-long v7, v7, v17

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 214
    div-long v7, v7, v17

    long-to-int v8, v7

    :goto_7
    add-int/lit8 v8, v8, 0x3b

    const/4 v7, 0x1

    sub-int/2addr v8, v7

    sub-int/2addr v1, v7

    add-int/2addr v1, v8

    .line 216
    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v8, v4, v6

    int-to-long v8, v8

    mul-long v8, v8, v26

    aget v4, v4, v7

    int-to-long v6, v4

    mul-long v6, v6, v26

    shr-long v6, v6, v19

    add-long/2addr v8, v6

    add-int/lit8 v1, v1, -0x1f

    shr-long v6, v8, v1

    const-wide/16 v8, 0xa

    .line 217
    rem-long/2addr v6, v8

    long-to-int v1, v6

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    const/4 v4, 0x0

    :goto_9
    if-lez v12, :cond_e

    .line 225
    rem-int/lit8 v6, v12, 0x5

    if-eqz v6, :cond_d

    goto :goto_a

    .line 228
    :cond_d
    div-int/lit8 v12, v12, 0x5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    const/4 v6, 0x0

    :goto_b
    if-lez v25, :cond_10

    .line 237
    rem-int/lit8 v7, v25, 0x5

    if-eqz v7, :cond_f

    goto :goto_c

    .line 240
    :cond_f
    div-int/lit8 v25, v25, 0x5

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_10
    :goto_c
    const/4 v7, 0x0

    :goto_d
    if-lez v3, :cond_12

    .line 249
    rem-int/lit8 v8, v3, 0x5

    if-eqz v8, :cond_11

    goto :goto_e

    .line 252
    :cond_11
    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_12
    :goto_e
    if-lt v4, v5, :cond_13

    const/4 v3, 0x1

    goto :goto_f

    :cond_13
    const/4 v3, 0x0

    :goto_f
    if-lt v6, v5, :cond_14

    const/4 v4, 0x1

    goto :goto_10

    :cond_14
    const/4 v4, 0x0

    :goto_10
    if-lt v7, v5, :cond_15

    const/4 v6, 0x1

    goto :goto_11

    :cond_15
    const/4 v6, 0x0

    :goto_11
    move v10, v4

    move/from16 v25, v22

    const/4 v4, 0x0

    goto/16 :goto_19

    :cond_16
    move/from16 v24, v10

    move/from16 v25, v11

    neg-int v1, v6

    int-to-long v7, v1

    const-wide/32 v9, 0x6aa784

    mul-long v7, v7, v9

    .line 262
    div-long v7, v7, v17

    long-to-int v2, v7

    sub-int/2addr v1, v2

    if-nez v1, :cond_17

    const/4 v8, 0x1

    goto :goto_12

    :cond_17
    int-to-long v7, v1

    mul-long v7, v7, v15

    add-long v7, v7, v17

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 264
    div-long v7, v7, v17

    long-to-int v8, v7

    :goto_12
    add-int/lit8 v8, v8, -0x3d

    sub-int v7, v2, v8

    .line 267
    sget-object v8, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v9, v8, v1

    const/4 v10, 0x0

    aget v11, v9, v10

    int-to-long v10, v11

    const/4 v13, 0x1

    .line 268
    aget v9, v9, v13

    int-to-long v13, v9

    add-int/lit8 v7, v7, -0x1f

    move/from16 v9, v25

    int-to-long v4, v9

    mul-long v25, v4, v10

    mul-long v27, v4, v13

    shr-long v27, v27, v19

    add-long v25, v25, v27

    move-wide/from16 v27, v4

    shr-long v4, v25, v7

    long-to-int v5, v4

    move/from16 v25, v5

    int-to-long v4, v12

    mul-long v29, v4, v10

    mul-long v4, v4, v13

    shr-long v4, v4, v19

    add-long v29, v29, v4

    shr-long v4, v29, v7

    long-to-int v5, v4

    move-object v4, v8

    move v12, v9

    int-to-long v8, v3

    mul-long v10, v10, v8

    mul-long v8, v8, v13

    shr-long v8, v8, v19

    add-long/2addr v10, v8

    shr-long v7, v10, v7

    long-to-int v8, v7

    if-eqz v2, :cond_19

    add-int/lit8 v7, v5, -0x1

    const/16 v9, 0xa

    .line 274
    div-int/2addr v7, v9

    div-int/lit8 v9, v8, 0xa

    if-gt v7, v9, :cond_19

    const/4 v7, 0x1

    add-int/2addr v1, v7

    add-int/lit8 v7, v2, -0x1

    if-nez v1, :cond_18

    const/4 v10, 0x1

    goto :goto_13

    :cond_18
    int-to-long v9, v1

    mul-long v9, v9, v15

    add-long v9, v9, v17

    const-wide/16 v13, 0x1

    sub-long/2addr v9, v13

    .line 276
    div-long v9, v9, v17

    long-to-int v10, v9

    :goto_13
    add-int/lit8 v10, v10, -0x3d

    sub-int/2addr v7, v10

    .line 278
    aget-object v1, v4, v1

    const/4 v4, 0x0

    aget v9, v1, v4

    int-to-long v9, v9

    mul-long v9, v9, v27

    const/4 v11, 0x1

    aget v1, v1, v11

    int-to-long v13, v1

    mul-long v13, v13, v27

    shr-long v13, v13, v19

    add-long/2addr v9, v13

    add-int/lit8 v7, v7, -0x1f

    shr-long/2addr v9, v7

    const-wide/16 v13, 0xa

    .line 279
    rem-long/2addr v9, v13

    long-to-int v1, v9

    goto :goto_14

    :cond_19
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_14
    add-int/2addr v6, v2

    const/4 v7, 0x1

    if-lt v7, v2, :cond_1a

    const/4 v9, 0x1

    goto :goto_15

    :cond_1a
    const/4 v9, 0x0

    :goto_15
    const/16 v10, 0x17

    if-ge v2, v10, :cond_1b

    add-int/lit8 v10, v2, -0x1

    shl-int v10, v7, v10

    sub-int/2addr v10, v7

    and-int/2addr v10, v12

    if-nez v10, :cond_1b

    const/4 v10, 0x1

    goto :goto_16

    :cond_1b
    const/4 v10, 0x0

    :goto_16
    const/4 v11, 0x2

    .line 285
    rem-int/2addr v3, v11

    if-ne v3, v7, :cond_1c

    const/4 v3, 0x0

    goto :goto_17

    :cond_1c
    const/4 v3, 0x1

    :goto_17
    if-lt v3, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_18

    :cond_1d
    const/4 v2, 0x0

    :goto_18
    move v11, v5

    move v5, v6

    move v3, v9

    move v6, v2

    move v2, v8

    :goto_19
    const v7, 0x3b9aca00

    const/16 v8, 0xa

    :goto_1a
    if-lez v8, :cond_1f

    if-lt v11, v7, :cond_1e

    goto :goto_1b

    .line 303
    :cond_1e
    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v8, v8, -0x1

    goto :goto_1a

    :cond_1f
    :goto_1b
    add-int/2addr v5, v8

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    const/4 v7, -0x3

    if-lt v5, v7, :cond_21

    const/4 v7, 0x7

    if-lt v5, v7, :cond_20

    goto :goto_1c

    :cond_20
    const/4 v7, 0x0

    goto :goto_1d

    :cond_21
    :goto_1c
    const/4 v7, 0x1

    :goto_1d
    if-eqz v3, :cond_22

    if-nez v24, :cond_22

    add-int/lit8 v11, v11, -0x1

    :cond_22
    const/4 v3, 0x0

    .line 315
    :goto_1e
    div-int/lit8 v9, v11, 0xa

    div-int/lit8 v12, v2, 0xa

    if-le v9, v12, :cond_25

    const/16 v13, 0x64

    if-ge v11, v13, :cond_23

    if-eqz v7, :cond_23

    goto :goto_20

    .line 320
    :cond_23
    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_24

    const/4 v1, 0x1

    goto :goto_1f

    :cond_24
    const/4 v1, 0x0

    :goto_1f
    and-int/2addr v6, v1

    .line 322
    rem-int/lit8 v1, v25, 0xa

    .line 323
    div-int/lit8 v25, v25, 0xa

    add-int/lit8 v3, v3, 0x1

    move v11, v9

    move v2, v12

    goto :goto_1e

    :cond_25
    :goto_20
    if-eqz v6, :cond_27

    if-eqz v24, :cond_27

    .line 328
    :goto_21
    rem-int/lit8 v9, v2, 0xa

    if-nez v9, :cond_27

    const/16 v9, 0x64

    if-ge v11, v9, :cond_26

    if-eqz v7, :cond_26

    goto :goto_22

    .line 333
    :cond_26
    div-int/lit8 v11, v11, 0xa

    .line 334
    rem-int/lit8 v1, v25, 0xa

    .line 335
    div-int/lit8 v25, v25, 0xa

    .line 336
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_27
    :goto_22
    move/from16 v9, v25

    const/4 v11, 0x5

    if-eqz v10, :cond_28

    if-ne v1, v11, :cond_28

    .line 341
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_28

    const/4 v1, 0x4

    :cond_28
    if-ne v9, v2, :cond_29

    if-eqz v6, :cond_2a

    if-eqz v24, :cond_2a

    :cond_29
    if-lt v1, v11, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    goto :goto_23

    :cond_2b
    const/4 v1, 0x0

    :goto_23
    add-int/2addr v9, v1

    sub-int/2addr v8, v3

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    .line 352
    aput-char v1, p1, p2

    goto :goto_24

    :cond_2c
    move/from16 v0, p2

    :goto_24
    if-eqz v7, :cond_31

    :goto_25
    add-int/lit8 v1, v8, -0x1

    if-ge v4, v1, :cond_2d

    .line 358
    rem-int/lit8 v1, v9, 0xa

    .line 359
    div-int/lit8 v9, v9, 0xa

    add-int v2, v0, v8

    sub-int/2addr v2, v4

    const/16 v3, 0x30

    add-int/2addr v1, v3

    int-to-char v1, v1

    .line 360
    aput-char v1, p1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2d
    const/16 v1, 0xa

    const/16 v3, 0x30

    .line 362
    rem-int/2addr v9, v1

    add-int/2addr v9, v3

    int-to-char v1, v9

    aput-char v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2e

    .line 363
    aput-char v2, p1, v1

    add-int/lit8 v1, v8, 0x1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v8, v1, :cond_2e

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    .line 366
    aput-char v2, p1, v0

    move v0, v1

    :cond_2e
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x45

    .line 370
    aput-char v2, p1, v0

    if-gez v5, :cond_2f

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x2d

    .line 372
    aput-char v2, p1, v1

    neg-int v5, v5

    move v1, v0

    :cond_2f
    const/16 v0, 0xa

    if-lt v5, v0, :cond_30

    add-int/lit8 v0, v1, 0x1

    .line 376
    div-int/lit8 v2, v5, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p1, v1

    move v1, v0

    goto :goto_26

    :cond_30
    const/16 v3, 0x30

    :goto_26
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xa

    .line 378
    rem-int/2addr v5, v2

    add-int/2addr v5, v3

    int-to-char v2, v5

    aput-char v2, p1, v1

    goto/16 :goto_2d

    :cond_31
    const/16 v3, 0x30

    if-gez v5, :cond_34

    add-int/lit8 v1, v0, 0x1

    .line 383
    aput-char v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x2e

    .line 384
    aput-char v2, p1, v1

    const/4 v1, -0x1

    :goto_27
    if-le v1, v5, :cond_32

    add-int/lit8 v2, v0, 0x1

    .line 386
    aput-char v3, p1, v0

    add-int/lit8 v1, v1, -0x1

    move v0, v2

    goto :goto_27

    :cond_32
    move v1, v0

    :goto_28
    if-ge v4, v8, :cond_33

    add-int v2, v0, v8

    sub-int/2addr v2, v4

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 390
    rem-int/lit8 v5, v9, 0xa

    add-int/2addr v5, v3

    int-to-char v3, v5

    aput-char v3, p1, v2

    const/16 v2, 0xa

    .line 391
    div-int/2addr v9, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x30

    goto :goto_28

    :cond_33
    move v0, v1

    goto :goto_2d

    :cond_34
    add-int/lit8 v1, v5, 0x1

    if-lt v1, v8, :cond_37

    :goto_29
    if-ge v4, v8, :cond_35

    add-int v2, v0, v8

    sub-int/2addr v2, v4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 397
    rem-int/lit8 v3, v9, 0xa

    const/16 v5, 0x30

    add-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, p1, v2

    const/16 v2, 0xa

    .line 398
    div-int/2addr v9, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_35
    add-int/2addr v0, v8

    :goto_2a
    if-ge v8, v1, :cond_36

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x30

    .line 402
    aput-char v3, p1, v0

    add-int/lit8 v8, v8, 0x1

    move v0, v2

    goto :goto_2a

    :cond_36
    const/16 v3, 0x30

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2e

    .line 404
    aput-char v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 405
    aput-char v3, p1, v1

    goto :goto_2d

    :cond_37
    add-int/lit8 v1, v0, 0x1

    :goto_2b
    if-ge v4, v8, :cond_39

    sub-int v2, v8, v4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v2, v5, :cond_38

    add-int v2, v1, v8

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    const/16 v6, 0x2e

    .line 411
    aput-char v6, p1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    :cond_38
    const/16 v6, 0x2e

    :goto_2c
    add-int v2, v1, v8

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    .line 414
    rem-int/lit8 v7, v9, 0xa

    const/16 v10, 0x30

    add-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, p1, v2

    const/16 v2, 0xa

    .line 415
    div-int/2addr v9, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_39
    const/4 v3, 0x1

    add-int/2addr v8, v3

    add-int/2addr v0, v8

    :goto_2d
    sub-int v0, v0, p2

    return v0
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result p0

    .line 108
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
