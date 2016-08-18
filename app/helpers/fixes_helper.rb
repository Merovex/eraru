module FixesHelper
	def fix_name(fix)
		s = ""
		return "Anonymous said" if fix.name.nil?
		s += fix.name
		s += " <a href='mailto:#{fix.email}'>#{fix.email}</a>" unless fix.email.nil?
		s += " said"
		return s.html_safe

	end
	def version_options(versions)
		v = versions.map do |v|
			[v.name, v.id]
		end
		v.unshift(['Version of Book You Are Reporting','Y'])
	end
	def fix_kind_options()
		{
			"" => ["Select type of correction"],
			"Technical Correction" => [["TYPO", "Typo"], ["GRAMMAR", "Grammar"], ["SUGGEST", "Suggestion"]],
			"Readability Correction" => [["INCREDIBLE" "Hard to Believe"],[ "CONFUSING" "Confusing"],[ "BORING" "Boring"]]
     	}

        end
end
