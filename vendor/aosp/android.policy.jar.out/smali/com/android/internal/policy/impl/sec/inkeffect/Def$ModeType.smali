.class public final enum Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;
.super Ljava/lang/Enum;
.source "Def.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/inkeffect/Def;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

.field public static final enum RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

.field public static final enum RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    const-string v1, "RIPPLE_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    .line 7
    new-instance v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    const-string v1, "RIPPLE_WITH_INK"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->$VALUES:[Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->$VALUES:[Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/sec/inkeffect/Def$ModeType;

    return-object v0
.end method
