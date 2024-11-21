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
}, {}
