.class public interface abstract Lcom/tencent/rmonitor/custom/ICustomDataEditor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/rmonitor/custom/IDataEditor;


# static fields
.field public static final NUMBER_PARAM_1:Ljava/lang/String; = "n1"

.field public static final NUMBER_PARAM_10:Ljava/lang/String; = "n10"

.field public static final NUMBER_PARAM_2:Ljava/lang/String; = "n2"

.field public static final NUMBER_PARAM_3:Ljava/lang/String; = "n3"

.field public static final NUMBER_PARAM_4:Ljava/lang/String; = "n4"

.field public static final NUMBER_PARAM_5:Ljava/lang/String; = "n5"

.field public static final NUMBER_PARAM_6:Ljava/lang/String; = "n6"

.field public static final NUMBER_PARAM_7:Ljava/lang/String; = "n7"

.field public static final NUMBER_PARAM_8:Ljava/lang/String; = "n8"

.field public static final NUMBER_PARAM_9:Ljava/lang/String; = "n9"

.field public static final NUMBER_PARAM_KEYS:[Ljava/lang/String;

.field public static final STRING_ARRAY_PARAM_1:Ljava/lang/String; = "a1"

.field public static final STRING_ARRAY_PARAM_10:Ljava/lang/String; = "a10"

.field public static final STRING_ARRAY_PARAM_2:Ljava/lang/String; = "a2"

.field public static final STRING_ARRAY_PARAM_3:Ljava/lang/String; = "a3"

.field public static final STRING_ARRAY_PARAM_4:Ljava/lang/String; = "a4"

.field public static final STRING_ARRAY_PARAM_5:Ljava/lang/String; = "a5"

.field public static final STRING_ARRAY_PARAM_6:Ljava/lang/String; = "a6"

.field public static final STRING_ARRAY_PARAM_7:Ljava/lang/String; = "a7"

.field public static final STRING_ARRAY_PARAM_8:Ljava/lang/String; = "a8"

.field public static final STRING_ARRAY_PARAM_9:Ljava/lang/String; = "a9"

.field public static final STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

.field public static final STRING_PARAM_1:Ljava/lang/String; = "s1"

.field public static final STRING_PARAM_10:Ljava/lang/String; = "s10"

.field public static final STRING_PARAM_2:Ljava/lang/String; = "s2"

.field public static final STRING_PARAM_3:Ljava/lang/String; = "s3"

.field public static final STRING_PARAM_4:Ljava/lang/String; = "s4"

.field public static final STRING_PARAM_5:Ljava/lang/String; = "s5"

.field public static final STRING_PARAM_6:Ljava/lang/String; = "s6"

.field public static final STRING_PARAM_7:Ljava/lang/String; = "s7"

.field public static final STRING_PARAM_8:Ljava/lang/String; = "s8"

.field public static final STRING_PARAM_9:Ljava/lang/String; = "s9"

.field public static final STRING_PARAM_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "n1"

    const-string v1, "n2"

    const-string v2, "n3"

    const-string v3, "n4"

    const-string v4, "n5"

    const-string v5, "n6"

    const-string v6, "n7"

    const-string v7, "n8"

    const-string v8, "n9"

    const-string v9, "n10"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->NUMBER_PARAM_KEYS:[Ljava/lang/String;

    const-string v1, "s1"

    const-string v2, "s2"

    const-string v3, "s3"

    const-string v4, "s4"

    const-string v5, "s5"

    const-string v6, "s6"

    const-string v7, "s7"

    const-string v8, "s8"

    const-string v9, "s9"

    const-string v10, "s10"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->STRING_PARAM_KEYS:[Ljava/lang/String;

    const-string v1, "a1"

    const-string v2, "a2"

    const-string v3, "a3"

    const-string v4, "a4"

    const-string v5, "a5"

    const-string v6, "a6"

    const-string v7, "a7"

    const-string v8, "a8"

    const-string v9, "a9"

    const-string v10, "a10"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addStringToSequence(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addStringToStringArrayParam(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getNumberParam(Ljava/lang/String;)D
.end method

.method public abstract getStringArrayParam(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStringParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putNumberParam(Ljava/lang/String;D)Z
.end method

.method public abstract putStringParam(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeStringFromStringArrayParam(Ljava/lang/String;Ljava/lang/String;)Z
.end method
