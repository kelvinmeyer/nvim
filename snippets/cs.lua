return {
	s("cw", {
		t('Console.WriteLine("'),
		i(1),
		t('");'),
	}),
	s("prop", {
		t("public"),
		i(1),
		t("{ get; set; }"),
	}),
	s("propg", {
		t("public"),
		i(1),
		t("{ get; init; }"),
	}),
	s("fore", {
		t("foreach(var "),
		i(1),
		t(" in "),
		i(2),
		t(" ){}"),
	}),
	s("if", {
		t("if ("),
		i(1),
		t("){}"),
	}),
}, {}
